import fs from 'fs';
import Mux from '@mux/mux-node';
import { Pool } from 'pg';

const mux = new Mux({
  tokenId: process.env.MUX_TOKEN_ID,
  tokenSecret: process.env.MUX_TOKEN_SECRET,
});

const pool = new Pool({
  connectionString: "postgresql://postgres.qaocxxcpjabmlabufjyh:KolboAdmin2026Secure@aws-0-us-west-2.pooler.supabase.com:5432/postgres?pgbouncer=true",
  max: 5,
});

const TOVEEDO_SUBSITE_ID = '300fccf5-1c86-41e8-a756-dd64fc2d06ab';

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

async function getImportedAssetIds() {
  const client = await pool.connect();
  try {
    const result = await client.query('SELECT "muxAssetId" FROM video_assets WHERE "muxAssetId" IS NOT NULL');
    return new Set(result.rows.map(r => r.muxAssetId));
  } finally {
    client.release();
  }
}

async function importVideo(video) {
  const client = await pool.connect();
  try {
    await client.query('BEGIN');
    
    const videoId = generateUuid();
    const assetId = generateUuid();
    const slug = `${slugify(video.title)}-${Date.now()}-${Math.random().toString(36).substr(2, 5)}`;
    
    await client.query(
      `INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
       VALUES ($1, $2, $3, $4, $5, $6, $7, $8, NOW(), NOW())`,
      [
        videoId, 
        video.title, 
        slug, 
        'unpublished', 
        TOVEEDO_SUBSITE_ID, 
        `Imported from Toveedo. Original URL: ${video.episodeUrl || 'N/A'}`,
        false, 
        false
      ]
    );
    
    if (video.assetId || video.muxAssetId) {
      await client.query(
        `INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
         VALUES ($1, $2, $3, $4, $5, $6, $7, true, NOW())`,
        [
          assetId,
          videoId,
          video.assetId || video.muxAssetId,
          video.playbackId || video.muxPlaybackId || null,
          video.uploadId || video.muxUploadId || null,
          video.status === 'ready' ? 'ready' : 'preparing',
          video.duration ? Math.round(video.duration) : null
        ]
      );
    }
    
    await client.query('COMMIT');
    return { success: true };
  } catch (error) {
    await client.query('ROLLBACK');
    return { success: false, error: error.message };
  } finally {
    client.release();
  }
}

async function main() {
  console.log('Starting complete import...\n');
  
  const uploadedVps = JSON.parse(fs.readFileSync('uploaded_videos_vps.json', 'utf-8'));
  const importedAssets = await getImportedAssetIds();
  
  console.log('Already imported:', importedAssets.size);
  
  const videosToProcess = [];
  for (const [key, video] of Object.entries(uploadedVps)) {
    if (video.assetId && !importedAssets.has(video.assetId)) {
      videosToProcess.push({ ...video, source: 'has_asset' });
    } else if (video.uploadId && !video.assetId) {
      videosToProcess.push({ ...video, source: 'needs_fetch' });
    }
  }
  
  console.log('Videos to process:', videosToProcess.length);
  console.log('  - With assetId:', videosToProcess.filter(v => v.source === 'has_asset').length);
  console.log('  - Need asset fetch:', videosToProcess.filter(v => v.source === 'needs_fetch').length);
  console.log('');
  
  let success = 0;
  let failed = 0;
  let skipped = 0;
  
  for (let i = 0; i < videosToProcess.length; i++) {
    const video = videosToProcess[i];
    
    if ((i + 1) % 10 === 0 || i === 0) {
      console.log(`Processing ${i + 1}/${videosToProcess.length}...`);
    }
    
    // Fetch asset if needed
    if (!video.assetId && video.uploadId) {
      try {
        const upload = await mux.video.uploads.retrieve(video.uploadId);
        if (upload && upload.asset_id) {
          const asset = await mux.video.assets.retrieve(upload.asset_id);
          video.assetId = upload.asset_id;
          video.playbackId = asset.playback_ids?.[0]?.id;
          video.duration = asset.duration;
          video.status = asset.status;
        } else {
          console.log(`  No asset for: ${video.title}`);
          skipped++;
          continue;
        }
        await new Promise(r => setTimeout(r, 200));
      } catch (e) {
        console.log(`  Error fetching ${video.title}: ${e.message}`);
        failed++;
        continue;
      }
    }
    
    // Import to DB
    const result = await importVideo(video);
    if (result.success) {
      success++;
      process.stdout.write('.');
    } else {
      failed++;
      process.stdout.write('x');
    }
    
    if ((i + 1) % 50 === 0) {
      console.log('');
    }
  }
  
  console.log('\n\nDone!');
  console.log('Success:', success);
  console.log('Failed:', failed);
  console.log('Skipped:', skipped);
  
  const countResult = await pool.query(
    'SELECT COUNT(*) as total FROM videos WHERE "subsiteId" = $1',
    [TOVEEDO_SUBSITE_ID]
  );
  console.log('Total videos in DB:', countResult.rows[0].total);
  
  await pool.end();
}

main().catch(console.error);
