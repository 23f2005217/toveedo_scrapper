/**
 * Consolidate all video JSON files into a single source-of-truth
 * - Merge data from all sources
 * - Remove duplicates
 * - Enrich with assetIds from mux_unmatched_assets if available
 * - Save to consolidated_videos.json
 */

const fs = require('fs');
const path = require('path');

const UPLOADED_VPS = 'uploaded_videos_vps.json';
const DIRECT_REFRESHED = 'direct_videos_refreshed.json';
const MUX_UNMATCHED = 'mux_unmatched_assets.json';
const REMAINING = 'remaining_videos.json';
const OUTPUT = 'consolidated_videos.json';
const BACKUP_DIR = 'backups';

// Create backup directory
if (!fs.existsSync(BACKUP_DIR)) {
  fs.mkdirSync(BACKUP_DIR);
}

// Backup all source files with timestamp
const timestamp = new Date().toISOString().replace(/[:.]/g, '-');
const filesToBackup = [UPLOADED_VPS, DIRECT_REFRESHED, MUX_UNMATCHED, REMAINING];
filesToBackup.forEach(file => {
  if (fs.existsSync(file)) {
    fs.copyFileSync(file, path.join(BACKUP_DIR, `${file}.${timestamp}`));
    console.log(`✅ Backed up: ${file} -> backups/${file}.${timestamp}`);
  }
});

// Load all files
console.log('\n📁 Loading source files...');

const uploadedVps = JSON.parse(fs.readFileSync(UPLOADED_VPS, 'utf-8'));
console.log(`  - uploaded_videos_vps.json: ${Object.keys(uploadedVps).length} entries`);

const directRefreshed = JSON.parse(fs.readFileSync(DIRECT_REFRESHED, 'utf-8'));
console.log(`  - direct_videos_refreshed.json: ${directRefreshed.length} entries`);

const muxUnmatched = JSON.parse(fs.readFileSync(MUX_UNMATCHED, 'utf-8'));
console.log(`  - mux_unmatched_assets.json: ${muxUnmatched.length} entries`);

let remaining = [];
if (fs.existsSync(REMAINING)) {
  remaining = JSON.parse(fs.readFileSync(REMAINING, 'utf-8'));
  console.log(`  - remaining_videos.json: ${remaining.length} entries`);
}

// Create a map to deduplicate videos by episodeUrl
const videoMap = new Map();

// Helper to extract playback ID from Mux URL
function extractPlaybackId(url) {
  const match = url?.match(/stream\.mux\.com\/([a-zA-Z0-9]+)(?:\.m3u8|\.mpd)?/);
  return match ? match[1] : null;
}

// Helper to extract playlist name from URL
function extractPlaylistName(url) {
  if (!url) return 'Uncategorized';
  const match = url.match(/programs\/([^?]+)/);
  if (match) {
    return match[1]
      .replace(/collection-?/, '')
      .replace(/-/g, ' ')
      .replace(/\b\w/g, l => l.toUpperCase());
  }
  return 'Uncategorized';
}

// Process uploaded_videos_vps.json (primary source - these are already uploaded)
console.log('\n🔨 Processing uploaded_videos_vps.json...');
for (const [key, video] of Object.entries(uploadedVps)) {
  const playbackId = extractPlaybackId(video.videoUrl);
  const episodeId = video.episodeUrl?.match(/cid=(\d+)/)?.[1];
  
  const normalized = {
    id: `tvd-${episodeId || playbackId || Math.random().toString(36).substr(2, 9)}`,
    title: video.title,
    episodeUrl: video.episodeUrl,
    playlistUrl: video.playlistUrl,
    playlistName: extractPlaylistName(video.playlistUrl),
    muxUploadId: video.muxUploadId,
    muxAssetId: video.assetId || null, // May be present in some entries
    muxPlaybackId: playbackId,
    videoUrl: video.videoUrl,
    uploadedAt: video.uploadedAt,
    status: 'uploaded',
    source: 'uploaded_vps'
  };
  
  // Use episodeUrl as unique key, fallback to playbackId
  const mapKey = video.episodeUrl || playbackId || key;
  videoMap.set(mapKey, normalized);
}

// Enrich with mux_unmatched_assets (these have assetIds and durations)
console.log('🔨 Enriching with mux_unmatched_assets.json...');
let enrichedCount = 0;
for (const asset of muxUnmatched) {
  // Try to find matching video by uploadId or episodeUrl
  let found = false;
  
  for (const [key, video] of videoMap.entries()) {
    // Match by uploadId
    if (video.muxUploadId && asset.uploadId && video.muxUploadId === asset.uploadId) {
      video.muxAssetId = asset.muxAssetId;
      video.duration = asset.duration;
      video.muxStatus = asset.status;
      video.source = `${video.source} + mux_unmatched`;
      enrichedCount++;
      found = true;
      break;
    }
    
    // Match by episodeUrl
    if (video.episodeUrl && asset.episodeUrl && video.episodeUrl === asset.episodeUrl) {
      video.muxAssetId = asset.muxAssetId;
      video.duration = asset.duration;
      video.muxStatus = asset.status;
      video.muxUploadId = video.muxUploadId || asset.uploadId;
      video.source = `${video.source} + mux_unmatched`;
      enrichedCount++;
      found = true;
      break;
    }
    
    // Match by playback ID
    const assetPlaybackId = extractPlaybackId(asset.playbackUrl);
    if (video.muxPlaybackId && assetPlaybackId && video.muxPlaybackId === assetPlaybackId) {
      video.muxAssetId = asset.muxAssetId;
      video.duration = asset.duration;
      video.muxStatus = asset.status;
      video.muxUploadId = video.muxUploadId || asset.uploadId;
      video.source = `${video.source} + mux_unmatched`;
      enrichedCount++;
      found = true;
      break;
    }
  }
  
  if (!found) {
    // Add as orphaned asset - no matching video found
    const playbackId = extractPlaybackId(asset.playbackUrl);
    const normalized = {
      id: `orph-${asset.muxAssetId.substr(-8)}`,
      title: asset.title,
      episodeUrl: asset.episodeUrl,
      playlistUrl: null,
      playlistName: 'Unknown',
      muxUploadId: asset.uploadId,
      muxAssetId: asset.muxAssetId,
      muxPlaybackId: playbackId,
      videoUrl: asset.playbackUrl,
      uploadedAt: asset.createdAt,
      duration: asset.duration,
      muxStatus: asset.status,
      status: 'orphaned',
      source: 'mux_unmatched'
    };
    videoMap.set(asset.episodeUrl || asset.muxAssetId, normalized);
  }
}

// Add any videos from direct_videos_refreshed that aren't already in the map
console.log('🔨 Adding unique videos from direct_videos_refreshed.json...');
let addedFromDirect = 0;
for (const video of directRefreshed) {
  const playbackId = extractPlaybackId(video.videoUrl);
  const episodeId = video.episodeUrl?.match(/cid=(\d+)/)?.[1];
  
  // Check if already exists
  let exists = false;
  for (const [key, existing] of videoMap.entries()) {
    if (existing.episodeUrl === video.episodeUrl || existing.muxPlaybackId === playbackId) {
      exists = true;
      break;
    }
  }
  
  if (!exists && video.episodeUrl) {
    const normalized = {
      id: `tvd-${episodeId || playbackId || Math.random().toString(36).substr(2, 9)}`,
      title: video.title,
      episodeUrl: video.episodeUrl,
      playlistUrl: video.playlistUrl,
      playlistName: extractPlaylistName(video.playlistUrl),
      muxUploadId: null,
      muxAssetId: null,
      muxPlaybackId: playbackId,
      videoUrl: video.videoUrl,
      uploadedAt: null,
      status: 'pending_upload',
      source: 'direct_refreshed'
    };
    videoMap.set(video.episodeUrl, normalized);
    addedFromDirect++;
  }
}

// Convert map to array
const consolidated = Array.from(videoMap.values());

// Statistics
const stats = {
  total: consolidated.length,
  uploaded: consolidated.filter(v => v.status === 'uploaded').length,
  orphaned: consolidated.filter(v => v.status === 'orphaned').length,
  pendingUpload: consolidated.filter(v => v.status === 'pending_upload').length,
  withAssetId: consolidated.filter(v => v.muxAssetId).length,
  withDuration: consolidated.filter(v => v.duration).length,
  byPlaylist: {}
};

// Count by playlist
for (const video of consolidated) {
  const playlist = video.playlistName || 'Unknown';
  stats.byPlaylist[playlist] = (stats.byPlaylist[playlist] || 0) + 1;
}

// Save consolidated file
fs.writeFileSync(OUTPUT, JSON.stringify(consolidated, null, 2));

console.log('\n✅ Consolidation Complete!');
console.log('==========================');
console.log(`Total unique videos: ${stats.total}`);
console.log(`  - Uploaded (ready to import): ${stats.uploaded}`);
console.log(`  - Orphaned (no source): ${stats.orphaned}`);
console.log(`  - Pending upload: ${stats.pendingUpload}`);
console.log(`  - With Mux Asset ID: ${stats.withAssetId}`);
console.log(`  - With duration: ${stats.withDuration}`);
console.log(`\nEnriched from mux_unmatched: ${enrichedCount}`);
console.log(`Added from direct_refreshed: ${addedFromDirect}`);
console.log(`\n📁 Saved to: ${OUTPUT}`);
console.log(`📁 Backups saved to: ${BACKUP_DIR}/`);

// Save stats
fs.writeFileSync('consolidation_stats.json', JSON.stringify(stats, null, 2));
console.log(`📊 Stats saved to: consolidation_stats.json`);
