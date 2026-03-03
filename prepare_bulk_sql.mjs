import fs from 'fs';
import Mux from '@mux/mux-node';
import dotenv from 'dotenv';
import crypto from 'crypto';

dotenv.config();

const mux = new Mux({
  tokenId: process.env.MUX_TOKEN_ID,
  tokenSecret: process.env.MUX_TOKEN_SECRET,
});

function randomUuid() {
  return crypto.randomUUID();
}

function slugify(text) {
  if (!text) return randomUuid().split('-')[0];
  return text.toLowerCase()
    .replace(/[^\w\s-]/g, '')
    .replace(/\s+/g, '-')
    .substring(0, 50) + '-' + Math.random().toString(36).substring(2, 6);
}

function escapeSql(str) {
  if (!str) return "''";
  return "'" + String(str).replace(/'/g, "''") + "'";
}

import { Pool } from 'pg';

const pool = new Pool({
  connectionString: "postgresql://postgres.qaocxxcpjabmlabufjyh:KolboAdmin2026Secure@aws-0-us-west-2.pooler.supabase.com:5432/postgres?pgbouncer=true",
  max: 3,
});

async function run() {
  console.log('Fetching existing DB assets...');
  const client = await pool.connect();
  const dbResult = await client.query('SELECT "muxAssetId" FROM video_assets WHERE "muxAssetId" IS NOT NULL');
  client.release();

  const dbAssetIds = new Set(dbResult.rows.map(r => r.muxAssetId));
  console.log(`Loaded ${dbAssetIds.size} existing assets from DB.`);

  // 2. Load metadata sources
  const consolidated = JSON.parse(fs.readFileSync('consolidated_videos.json', 'utf8'));
  const directVideos = JSON.parse(fs.readFileSync('direct_videos.json', 'utf8')).map(v => ({
    ...v,
    title: v.title || '',
    duration: 0 // direct_videos doesn't have exact duration usually
  }));

  const allMeta = [...consolidated, ...directVideos];

  // 3. Fetch Mux assets
  console.log('Fetching all Mux assets...');
  const PAGE_SIZE = 100;
  let page = 1;
  let allAssets = [];
  let fetched;
  do {
    const response = await mux.video.assets.list({ limit: PAGE_SIZE, page });
    fetched = response.data ?? response;
    allAssets = allAssets.concat(fetched);
    page++;
  } while (fetched.length === PAGE_SIZE);

  // Focus on Toveedo assets that are ready
  const toveedoReady = allAssets.filter(a => {
    if (a.status !== 'ready') return false;
    const extId = a.meta?.external_id || '';
    const passthrough = a.passthrough || '';
    return extId.includes('toveedo') || passthrough.includes('toveedo');
  });
  console.log(`Found ${toveedoReady.length} ready Toveedo assets on Mux.`);

  const missingFromDb = toveedoReady.filter(a => !dbAssetIds.has(a.id));
  console.log(`Missing from DB: ${missingFromDb.length}`);

  let sqlChunks = [];
  sqlChunks.push('BEGIN;');

  let matchedCount = 0;
  let fallbackCount = 0;

  for (const asset of missingFromDb) {
    // Attempt to match metadata
    const muxUploadId = asset.upload_id;
    const muxUrlExt = asset.meta?.external_id;
    const muxPassthrough = asset.passthrough;
    const muxTitle = asset.meta?.title;
    const duration = asset.duration || 0;

    let match = null;

    // A. Match by exact uploadId
    if (!match && muxUploadId) {
      match = allMeta.find(m => m.muxUploadId === muxUploadId || m.uploadId === muxUploadId);
    }
    // B. Match by external_id or passthrough url
    if (!match && muxPassthrough && muxPassthrough.includes('toveedo.com/programs')) {
      match = allMeta.find(m => (m.episodeUrl || '').includes(muxPassthrough));
    }
    if (!match && muxUrlExt && muxUrlExt.includes('toveedo.com/programs')) {
      match = allMeta.find(m => (m.episodeUrl || '').includes(muxUrlExt));
    }
    // C. Match by title AND duration (or closest duration)
    if (!match && muxTitle) {
      const titleMatches = allMeta.filter(m => (m.title || '').trim().toLowerCase() === muxTitle.trim().toLowerCase());
      if (titleMatches.length === 1) {
        match = titleMatches[0];
      } else if (titleMatches.length > 1) {
        // Find closest duration if available
        let bestDiff = 999999;
        let bestMatch = null;
        for (const tm of titleMatches) {
          if (tm.duration) {
            const diff = Math.abs(tm.duration - duration);
            if (diff < bestDiff) {
              bestDiff = diff;
              bestMatch = tm;
            }
          }
        }
        if (bestDiff < 10) { // Within 10 seconds
          match = bestMatch;
        } else {
          match = titleMatches[0]; // fallback to first
        }
      }
    }

    if (match) {
      matchedCount++;
    } else {
      fallbackCount++;
      // Create a fallback metadata set using whatever Mux provided
      match = {
        title: muxTitle || `Unknown Toveedo Video ${asset.id}`,
        duration: duration,
        muxAssetId: asset.id,
        muxPlaybackId: asset.playback_ids?.[0]?.id,
        muxUploadId: asset.upload_id
      };
    }

    const videoId = randomUuid();
    const assetRowId = randomUuid();
    const title = match.title || 'Untitled Video';
    const slug = slugify(title);
    const desc = escapeSql(match.description || '');
    const playbackId = asset.playback_ids?.[0]?.id || match.muxPlaybackId || '';
    const safeUpId = asset.upload_id || match.muxUploadId || '';

    const insertVideo = `
      INSERT INTO public."videos" (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
      VALUES ('${videoId}', ${escapeSql(title)}, '${slug}', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', ${desc}, false, false, NOW(), NOW());
    `;

    const insertAsset = `
      INSERT INTO public."video_assets" (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
      VALUES ('${assetRowId}', '${videoId}', '${asset.id}', '${playbackId}', '${safeUpId}', 'ready', ${Math.round(duration)}, true, NOW());
    `;

    sqlChunks.push(insertVideo);
    sqlChunks.push(insertAsset);
  }

  sqlChunks.push('COMMIT;');
  const finalSql = sqlChunks.join('\n');
  fs.writeFileSync('sync_toveedo_videos.sql', finalSql);
  console.log(`\nGenerated sync_toveedo_videos.sql`);
  console.log(`Total Inserts: ${missingFromDb.length}`);
  console.log(`Matched with robust metadata: ${matchedCount}`);
  console.log(`Fallback minimal metadata: ${fallbackCount}`);

  console.log('\\nExecuting inserts into Database to bypass context generation limits...');
  const poolClient = await pool.connect();
  try {
    await poolClient.query(finalSql);
    console.log('Successfully inserted all missing assets into the database!');
  } catch (err) {
    console.error('Error inserting into database:', err);
  } finally {
    poolClient.release();
    await pool.end();
  }
}

run().catch(console.error);
