const fs = require('fs');
const { execSync } = require('child_process');

// Get Mux credentials from env
const envContent = fs.readFileSync('/home/gir/Desktop/programming/kolbo-monorepo/apps/hq/.env', 'utf-8');
const muxTokenId = envContent.match(/MUX_TOKEN_ID=(.+)/)?.[1];
const muxTokenSecret = envContent.match(/MUX_TOKEN_SECRET=(.+)/)?.[1];

if (!muxTokenId || !muxTokenSecret) {
  console.error('Missing Mux credentials');
  process.exit(1);
}

console.log('Fetching remaining assets from Mux...');
console.log('');

// Create temp script
const script = `
import Mux from '@mux/mux-node';
import fs from 'fs';

const mux = new Mux({
  tokenId: '${muxTokenId}',
  tokenSecret: '${muxTokenSecret}',
});

const uploadedVps = JSON.parse(fs.readFileSync('uploaded_videos_vps.json', 'utf-8'));
const consolidated = JSON.parse(fs.readFileSync('consolidated_videos.json', 'utf-8'));

// Find videos with uploadId but no assetId
const videosNeedingFetch = [];
for (const [key, video] of Object.entries(uploadedVps)) {
  if (video.muxUploadId && !video.assetId) {
    // Check if already in consolidated
    const existing = consolidated.find(c => 
      c.muxUploadId === video.muxUploadId
    );
    if (!existing || !existing.muxAssetId) {
      videosNeedingFetch.push({
        key,
        title: video.title,
        muxUploadId: video.muxUploadId
      });
    }
  }
}

console.log('Videos needing asset fetch:', videosNeedingFetch.length);

let fetched = 0;
let failed = 0;

for (const video of videosNeedingFetch.slice(0, 30)) { // Limit to 30 for now
  try {
    const upload = await mux.video.uploads.retrieve(video.muxUploadId);
    if (upload && upload.asset_id) {
      const asset = await mux.video.assets.retrieve(upload.asset_id);
      
      // Find in consolidated and update
      const idx = consolidated.findIndex(c => c.muxUploadId === video.muxUploadId);
      if (idx !== -1) {
        consolidated[idx].muxAssetId = upload.asset_id;
        consolidated[idx].muxPlaybackId = asset.playback_ids?.[0]?.id || null;
        consolidated[idx].duration = asset.duration || null;
        consolidated[idx].muxStatus = asset.status;
        console.log('Fetched:', video.title, '->', upload.asset_id);
        fetched++;
      } else {
        console.log('Not in consolidated:', video.title);
        failed++;
      }
    } else {
      console.log('No asset for:', video.title);
      failed++;
    }
    await new Promise(r => setTimeout(r, 300));
  } catch (e) {
    console.log('Error for', video.title, ':', e.message);
    failed++;
  }
}

fs.writeFileSync('consolidated_videos.json', JSON.stringify(consolidated, null, 2));

console.log('');
console.log('Summary:');
console.log('Fetched:', fetched);
console.log('Failed:', failed);
`;

fs.writeFileSync('temp_fetch.mjs', script);

// Run it
try {
  execSync('node temp_fetch.mjs', { stdio: 'inherit' });
} finally {
  fs.unlinkSync('temp_fetch.mjs');
}
