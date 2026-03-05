import fs from 'fs';
import crypto from 'crypto';
import { Pool } from 'pg';

const data = JSON.parse(fs.readFileSync('/home/gir/Desktop/programming/kolbo-monorepo/tovedo/uploaded_videos_vps.json', 'utf8'));

const pool = new Pool({
  connectionString: "postgresql://postgres.qaocxxcpjabmlabufjyh:KolboAdmin2026Secure@aws-0-us-west-2.pooler.supabase.com:5432/postgres?pgbouncer=true",
  max: 3,
});

async function run() {
  const client = await pool.connect();
  console.log("Connected to DB...");
  
  try {
    // 1. Fetch existing video assets mapped
    const assetsRes = await client.query('SELECT "videoId", "muxAssetId", "muxUploadId" FROM "video_assets"');
    const assetMap = new Map();
    const uploadMap = new Map();
    for (const r of assetsRes.rows) {
      if (r.muxAssetId) assetMap.set(r.muxAssetId, r.videoId);
      if (r.muxUploadId) uploadMap.set(r.muxUploadId, r.videoId);
    }
    console.log(`Loaded ${assetMap.size} video_assets with a muxAssetId and ${uploadMap.size} with muxUploadId`);

    // 2. Fetch existing playlists
    const playlistsRes = await client.query('SELECT id, title FROM "playlists"');
    const playlistMap = new Map();
    for (const r of playlistsRes.rows) {
      playlistMap.set(r.title.trim().toLowerCase(), r.id);
    }
    console.log(`Loaded ${playlistMap.size} existing playlists`);

    // 3. Process items from JSON
    const newPlaylists = new Map(); // name (exact casing) => id
    // We'll also keep a lowercased version to check if we already added it during this run
    const newPlaylistMapLowers = new Map();
    
    const newPlaylistItems = []; // { playlistId, videoId, position }
    
    // We want to assign positions
    const playlistPosCounter = new Map();

    for (const key in data) {
      const item = data[key];
      if (!item.playlistName) continue;
      
      const playlistNameRaw = item.playlistName.trim();
      const playlistNameLow = playlistNameRaw.toLowerCase();
      
      const vAssetId = item.assetId;
      const vUploadId = item.uploadId || item.muxUploadId;

      let videoId = null;
      if (vAssetId) videoId = assetMap.get(vAssetId);
      if (!videoId && vUploadId) videoId = uploadMap.get(vUploadId);
      
      if (!videoId) {
        // Skip - wait until it's synced!
        continue;
      }
      
      let playlistId = playlistMap.get(playlistNameLow) || newPlaylistMapLowers.get(playlistNameLow);

      if (!playlistId) {
        playlistId = crypto.randomUUID();
        newPlaylists.set(playlistNameRaw, playlistId);
        newPlaylistMapLowers.set(playlistNameLow, playlistId);
      }
      
      let currentPos = playlistPosCounter.get(playlistId) || 0;
      currentPos += 1;
      playlistPosCounter.set(playlistId, currentPos);
      
      newPlaylistItems.push({
        id: crypto.randomUUID(),
        playlistId,
        videoId,
        position: currentPos
      });
    }

    console.log(`Found ${newPlaylists.size} new playlists to insert.`);
    console.log(`Found ${newPlaylistItems.length} videos to link to playlists.`);

    if (newPlaylists.size > 0) {
      console.log('Inserting new playlists...');
      await client.query('BEGIN');
      for (const [name, id] of newPlaylists.entries()) {
        await client.query(
          `INSERT INTO "playlists" (id, title, status, "createdAt", "updatedAt") VALUES ($1, $2, 'published', NOW(), NOW())`,
          [id, name]
        );
      }
      await client.query('COMMIT');
    }

    if (newPlaylistItems.length > 0) {
      console.log('Inserting video links into playlist_items...');
      await client.query('BEGIN');
      let skipped = 0;
      let inserted = 0;
      for (const pi of newPlaylistItems) {
        try {
          await client.query(
            `INSERT INTO "playlist_items" (id, "playlistId", "videoId", position, "createdAt") VALUES ($1, $2, $3, $4, NOW()) ON CONFLICT ("playlistId", "videoId") DO NOTHING`,
            [pi.id, pi.playlistId, pi.videoId, pi.position]
          );
          inserted++;
        } catch (err) {
          console.error(`Failed to insert playlist item. Playlist: ${pi.playlistId}, Video: ${pi.videoId}`, err.message);
          skipped++;
        }
      }
      await client.query('COMMIT');
      console.log(`Finished inserts: ${inserted} success, ${skipped} skipped (duplicates/errors)`);
    }

  } catch (err) {
    await client.query('ROLLBACK');
    console.error('Error running migrations:', err);
  } finally {
    client.release();
    await pool.end();
  }
}

run().catch(console.error);
