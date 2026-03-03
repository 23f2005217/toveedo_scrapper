/**
 * Execute import with proper handling of conflicts
 */

import fs from 'fs';
import { fileURLToPath } from 'url';
import path from 'path';
import { Pool } from 'pg';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const DATABASE_URL = "postgresql://postgres.qaocxxcpjabmlabufjyh:KolboAdmin2026Secure@aws-0-us-west-2.pooler.supabase.com:5432/postgres?pgbouncer=true";
const CONSOLIDATED_FILE = path.join(__dirname, 'consolidated_videos.json');
const TOVEEDO_SUBSITE_ID = '300fccf5-1c86-41e8-a756-dd64fc2d06ab';

const pool = new Pool({
  connectionString: DATABASE_URL,
  max: 5,
});

// Helper to generate UUID
function generateUuid() {
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
    const r = Math.random() * 16 | 0;
    const v = c === 'x' ? r : (r & 0x3 | 0x8);
    return v.toString(16);
  });
}

function slugify(title) {
  return title
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/(^-|-$)+/g, '')
    .substring(0, 50);
}

function escapeSqlString(str) {
  if (!str) return '';
  return str.replace(/'/g, "''").replace(/\\/g, '\\\\');
}

async function checkVideoExists(client, muxAssetId) {
  if (!muxAssetId) return false;
  const result = await client.query(
    'SELECT id FROM video_assets WHERE "muxAssetId" = $1',
    [muxAssetId]
  );
  return result.rows.length > 0;
}

async function importVideo(client, video) {
  // Check if already exists
  if (video.muxAssetId) {
    const exists = await checkVideoExists(client, video.muxAssetId);
    if (exists) {
      return { status: 'skipped', reason: 'already_exists' };
    }
  }

  const videoId = generateUuid();
  const assetId = generateUuid();
  const slugBase = slugify(video.title);
  const slug = `${slugBase}-${Date.now()}-${Math.random().toString(36).substr(2, 5)}`;
  
  const title = escapeSqlString(video.title);
  const description = escapeSqlString(video.episodeUrl ? 
    `Imported from Toveedo. Original URL: ${video.episodeUrl}` : 
    'Imported from Toveedo'
  );

  try {
    // Insert Video
    await client.query(
      `INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
       VALUES ($1, $2, $3, $4, $5, $6, $7, $8, NOW(), NOW())`,
      [videoId, title, slug, 'unpublished', TOVEEDO_SUBSITE_ID, description, false, false]
    );

    // Insert VideoAsset
    if (video.muxAssetId) {
      await client.query(
        `INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
         VALUES ($1, $2, $3, $4, $5, $6, $7, true, NOW())`,
        [
          assetId, 
          videoId, 
          video.muxAssetId, 
          video.muxPlaybackId, 
          video.muxUploadId,
          video.muxStatus === 'ready' ? 'ready' : 'preparing',
          video.duration ? Math.round(video.duration) : null
        ]
      );
    }

    return { status: 'success', videoId };
  } catch (error) {
    return { status: 'failed', error: error.message };
  }
}

async function main() {
  console.log('🎬 Toveedo Video Import - Fixed Execution');
  console.log('==========================================\n');
  
  // Load consolidated videos
  const videos = JSON.parse(fs.readFileSync(CONSOLIDATED_FILE, 'utf-8'));
  
  // Filter to only uploaded videos with asset IDs
  const videosToImport = videos.filter(v => 
    v.status === 'uploaded' && v.muxAssetId
  );
  
  console.log(`📁 Total videos to import: ${videosToImport.length}`);
  console.log(`🎯 Using subsite: ${TOVEEDO_SUBSITE_ID}\n`);
  
  let successCount = 0;
  let skipCount = 0;
  let failCount = 0;
  
  for (let i = 0; i < videosToImport.length; i++) {
    const video = videosToImport[i];
    
    if ((i + 1) % 10 === 0 || i === 0) {
      console.log(`\n📦 Processing ${i + 1}/${videosToImport.length}...`);
    }
    
    const client = await pool.connect();
    try {
      await client.query('BEGIN');
      const result = await importVideo(client, video);
      await client.query('COMMIT');
      
      if (result.status === 'success') {
        successCount++;
        process.stdout.write('✅');
      } else if (result.status === 'skipped') {
        skipCount++;
        process.stdout.write('⏭️');
      } else {
        failCount++;
        process.stdout.write('❌');
        console.log(`\n  Failed: ${video.title} - ${result.error}`);
      }
    } catch (error) {
      await client.query('ROLLBACK');
      failCount++;
      process.stdout.write('❌');
      console.log(`\n  Error: ${video.title} - ${error.message}`);
    } finally {
      client.release();
    }
    
    // Delay every 10 videos
    if ((i + 1) % 10 === 0) {
      await new Promise(resolve => setTimeout(resolve, 200));
    }
  }
  
  console.log('\n\n==========================================');
  console.log('📊 Import Summary');
  console.log('==========================================');
  console.log(`✅ Successfully imported: ${successCount}`);
  console.log(`⏭️  Skipped (already exist): ${skipCount}`);
  console.log(`❌ Failed: ${failCount}`);
  
  // Final count
  const countResult = await pool.query(
    'SELECT COUNT(*) as total FROM videos WHERE "subsiteId" = $1',
    [TOVEEDO_SUBSITE_ID]
  );
  console.log(`📊 Total videos in Toveedo subsite: ${countResult.rows[0].total}`);
  
  await pool.end();
}

main().catch(err => {
  console.error('\n💥 Fatal error:', err);
  process.exit(1);
});
