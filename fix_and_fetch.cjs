const fs = require('fs');
const { execSync } = require('child_process');

// Get Mux credentials
const envContent = fs.readFileSync('/home/gir/Desktop/programming/kolbo-monorepo/apps/hq/.env', 'utf-8');
const muxTokenId = envContent.match(/MUX_TOKEN_ID=(.+)/)?.[1];
const muxTokenSecret = envContent.match(/MUX_TOKEN_SECRET=(.+)/)?.[1];

console.log('Fetching assets for remaining uploads...');
console.log('');

// Load data
const uploadedVps = JSON.parse(fs.readFileSync('uploaded_videos_vps.json', 'utf-8'));
const consolidated = JSON.parse(fs.readFileSync('consolidated_videos.json', 'utf-8'));

// Find videos in uploadedVps with uploadId but no assetId
const needFetching = [];
for (const [key, video] of Object.entries(uploadedVps)) {
  if (video.uploadId && !video.assetId) {
    const existing = consolidated.find(c => c.muxUploadId === video.uploadId);
    if (!existing || !existing.muxAssetId) {
      needFetching.push({
        title: video.title,
        uploadId: video.uploadId,
        episodeUrl: video.episodeUrl,
        playlistUrl: video.playlistUrl,
        videoUrl: video.videoUrl,
        uploadedAt: video.uploadedAt
      });
    }
  }
}

console.log('Videos to fetch assets for:', needFetching.length);
console.log('Already have assets in consolidated:', consolidated.filter(c => c.muxAssetId).length);
console.log('');

if (needFetching.length === 0) {
  console.log('Nothing to fetch!');
  process.exit(0);
}

// Create fetch script
const script = `
import Mux from '@mux/mux-node';
import fs from 'fs';

const mux = new Mux({
  tokenId: '${muxTokenId}',
  tokenSecret: '${muxTokenSecret}',
});

const consolidated = JSON.parse(fs.readFileSync('consolidated_videos.json', 'utf-8'));
const needFetching = ${JSON.stringify(needFetching)};

let fetched = 0;
let failed = 0;

for (const video of needFetching) {
  try {
    console.log('Fetching:', video.title);
    const upload = await mux.video.uploads.retrieve(video.uploadId);
    
    if (upload && upload.asset_id) {
      const asset = await mux.video.assets.retrieve(upload.asset_id);
      
      // Add to consolidated
      consolidated.push({
        id: 'tvd-' + video.uploadId.substring(0, 8),
        title: video.title,
        episodeUrl: video.episodeUrl,
        playlistUrl: video.playlistUrl,
        playlistName: 'Imported',
        muxUploadId: video.uploadId,
        muxAssetId: upload.asset_id,
        muxPlaybackId: asset.playback_ids?.[0]?.id || null,
        videoUrl: video.videoUrl,
        uploadedAt: video.uploadedAt,
        status: 'uploaded',
        source: 'fetched_from_uploadId',
        duration: asset.duration,
        muxStatus: asset.status
      });
      
      console.log('  -> Asset:', upload.asset_id);
      fetched++;
    } else {
      console.log('  -> No asset_id');
      failed++;
    }
    
    await new Promise(r => setTimeout(r, 200));
  } catch (e) {
    console.log('  -> Error:', e.message);
    failed++;
  }
}

fs.writeFileSync('consolidated_videos.json', JSON.stringify(consolidated, null, 2));

console.log('');
console.log('Done. Fetched:', fetched, 'Failed:', failed);
`;

fs.writeFileSync('temp_fetch_all.mjs', script);

// Run it
execSync('node temp_fetch_all.mjs', { stdio: 'inherit' });
fs.unlinkSync('temp_fetch_all.mjs');
