/**
 * Generate SQL statements to import Toveedo videos
 * 
 * This script generates SQL INSERT statements that can be executed
 * to import the videos into the database.
 * 
 * Usage:
 *   node import_videos_sql.mjs > import_videos.sql
 *   # Then run the SQL in Supabase SQL Editor or psql
 */

import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const TOVEEDO_SUBSITE_ID = '300fccf5-1c86-41e8-a756-dd64fc2d06ab';
const CONSOLIDATED_FILE = path.join(__dirname, 'consolidated_videos.json');
const PROGRESS_FILE = path.join(__dirname, 'sql_import_progress.json');

// Configuration
const ONLY_WITH_ASSET_ID = process.env.ONLY_WITH_ASSET_ID !== 'false';
const BATCH_SIZE = parseInt(process.env.BATCH_SIZE || '100');

// Load consolidated videos
const videos = JSON.parse(fs.readFileSync(CONSOLIDATED_FILE, 'utf-8'));

// Load progress
let progress = { generated: [], errors: [] };
if (fs.existsSync(PROGRESS_FILE)) {
  progress = JSON.parse(fs.readFileSync(PROGRESS_FILE, 'utf-8'));
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

function generateUuid() {
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
    const r = Math.random() * 16 | 0;
    const v = c === 'x' ? r : (r & 0x3 | 0x8);
    return v.toString(16);
  });
}

// Filter videos to import
let videosToImport = videos.filter(v => v.status === 'uploaded');

if (ONLY_WITH_ASSET_ID) {
  videosToImport = videosToImport.filter(v => v.muxAssetId);
}

// Skip already generated
videosToImport = videosToImport.filter(v => !progress.generated.includes(v.id));

console.log(`-- Toveedo Video Import SQL`);
console.log(`-- Generated: ${new Date().toISOString()}`);
console.log(`-- Total videos to import: ${videosToImport.length}`);
console.log(`-- Subsite ID: ${TOVEEDO_SUBSITE_ID}`);
console.log('');
console.log('BEGIN;');
console.log('');

let count = 0;

for (const video of videosToImport) {
  const videoId = generateUuid();
  const assetId = generateUuid();
  const slugBase = slugify(video.title);
  const slug = `${slugBase}-${Date.now()}-${Math.random().toString(36).substr(2, 5)}`;
  
  const title = escapeSqlString(video.title);
  const description = escapeSqlString(video.episodeUrl ? 
    `Imported from Toveedo. Original URL: ${video.episodeUrl}` : 
    'Imported from Toveedo'
  );
  
  // Generate Video INSERT
  console.log(`-- Video: ${video.title}`);
  console.log(`INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")`);
  console.log(`VALUES ('${videoId}', '${title}', '${slug}', 'unpublished', '${TOVEEDO_SUBSITE_ID}', '${description}', false, false, NOW(), NOW())`);
  console.log(`ON CONFLICT (slug) DO NOTHING;`);
  
  // Generate VideoAsset INSERT
  if (video.muxAssetId) {
    const status = video.muxStatus === 'ready' ? 'ready' : 'preparing';
    const duration = video.duration ? Math.round(video.duration) : 'NULL';
    
    console.log(`INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")`);
    console.log(`VALUES ('${assetId}', '${videoId}', '${video.muxAssetId}', ${video.muxPlaybackId ? `'${video.muxPlaybackId}'` : 'NULL'}, ${video.muxUploadId ? `'${video.muxUploadId}'` : 'NULL'}, '${status}', ${duration}, true, NOW())`);
    console.log(`ON CONFLICT ("muxAssetId") DO NOTHING;`);
  }
  
  console.log('');
  
  progress.generated.push(video.id);
  count++;
  
  // Save progress periodically
  if (count % BATCH_SIZE === 0) {
    fs.writeFileSync(PROGRESS_FILE, JSON.stringify(progress, null, 2));
    console.log(`-- Progress: ${count}/${videosToImport.length} videos processed`);
    console.log('');
  }
}

console.log('COMMIT;');
console.log('');
console.log(`-- Import complete: ${count} videos`);

// Save final progress
fs.writeFileSync(PROGRESS_FILE, JSON.stringify(progress, null, 2));
