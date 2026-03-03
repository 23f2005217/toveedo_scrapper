/**
 * Resumable import - skips already imported videos
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

async function getImportedAssetIds(client) {
  const result = await client.query(
    'SELECT "muxAssetId" FROM video_assets WHERE "muxAssetId" IS NOT NULL'
  );
  return new Set(result.rows.map(r => r.muxAssetId));
}

async function main() {
  console.log('🎬 Toveedo Video Import - Resumable');
  console.log('=====================================\n');
  
  // Load consolidated videos
  const videos = JSON.parse(fs.readFileSync(CONSOLIDATED_FILE, 'utf-8'));
  
  // Get already imported asset IDs
  const client = await pool.connect();
  const importedAssets = await getImportedAssetIds(client);
  client.release();
  
  console.log(`📊 Already imported: ${importedAssets.size} videos`);
  
  // Filter to only videos needing import
  const videosToImport = videos.filter(v => 
    v.status === 'uploaded' && 
    v.muxAssetId && 
    !importedAssets.has(v.muxAssetId)
  );
  
  console.log(`📁 Remaining to import: ${videosToImport.length}`);
  console.log(`🎯 Using subsite: ${TOVEEDO_SUBSITE_ID}\n`);
  
  if (videosToImport.length === 0) {
    console.log('✅ All videos already imported!');
    await pool.end();
    return;
  }
  
  let successCount = 0;
  let failCount = 0;
  
  for (let i = 0; i < videosToImport.length; i++) {
    const video = videosToImport[i];
    
    if ((i + 1) % 10 === 0 || i === 0 || i === videosToImport.length - 1) {
      console.log(`\n📦 Processing ${i + 1}/${videosToImport.length}...`);
    }
    
    const client = await pool.connect();
    try {
      await client.query('BEGIN');
      
      const videoId = generateUuid();
      const assetId = generateUuid();
      const slugBase = slugify(video.title);
      const slug = `${slugBase}-${Date.now()}-${Math.random().toString(36).substr(2, 5)}`;
      
      const title = escapeSqlString(video.title);
      const description = escapeSqlString(video.episodeUrl ? 
        `Imported from Toveedo. Original URL: ${video.episodeUrl}` : 
        'Imported from Toveedo'
      );
      
      // Insert Video
      await client.query(
        `INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
         VALUES ($1, $2, $3, $4, $5, $6, $7, $8, NOW(), NOW())`,
        [videoId, title, slug, 'unpublished', TOVEEDO_SUBSITE_ID, description, false, false]
      );
      
      // Insert VideoAsset
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
      
      await client.query('COMMIT');
      successCount++;
      process.stdout.write('✅');
      
    } catch (error) {
      await client.query('ROLLBACK');
      failCount++;
      process.stdout.write('❌');
      if (failCount <= 5) {
        console.log(`\n  Error: ${video.title} - ${error.message}`);
      }
    } finally {
      client.release();
    }
    
    // Delay every 10 videos
    if ((i + 1) % 10 === 0) {
      await new Promise(resolve => setTimeout(resolve, 200));
    }
  }
  
  console.log('\n\n=====================================');
  console.log('📊 Import Summary');
  console.log('=====================================');
  console.log(`✅ Successfully imported: ${successCount}`);
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
