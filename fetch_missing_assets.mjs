/**
 * Fetch missing Mux Asset IDs from upload IDs
 */

import fs from 'fs';
import Mux from '@mux/mux-node';

const mux = new Mux({
  tokenId: process.env.MUX_TOKEN_ID,
  tokenSecret: process.env.MUX_TOKEN_SECRET,
});

const uploadedVps = JSON.parse(fs.readFileSync('uploaded_videos_vps.json', 'utf-8'));
const consolidated = JSON.parse(fs.readFileSync('consolidated_videos.json', 'utf-8'));

// Find videos with uploadId but no assetId
const videosNeedingFetch = consolidated.filter(v => 
  v.status === 'uploaded' && 
  v.muxUploadId && 
  !v.muxAssetId
);

console.log(`🔍 Found ${videosNeedingFetch.length} videos needing asset ID fetch`);
console.log(`✅ Already have asset IDs: ${consolidated.filter(v => v.muxAssetId).length}`);

let fetched = 0;
let failed = 0;

for (const video of videosNeedingFetch) {
  try {
    console.log(`\n  🔍 Fetching asset for: ${video.title}`);
    console.log(`     Upload ID: ${video.muxUploadId}`);
    
    // Get upload details from Mux
    const upload = await mux.video.uploads.retrieve(video.muxUploadId);
    
    if (upload && upload.asset_id) {
      // Get asset details
      const asset = await mux.video.assets.retrieve(upload.asset_id);
      
      // Update consolidated video
      const idx = consolidated.findIndex(v => v.id === video.id);
      if (idx !== -1) {
        consolidated[idx].muxAssetId = upload.asset_id;
        consolidated[idx].muxPlaybackId = asset.playback_ids?.[0]?.id || null;
        consolidated[idx].duration = asset.duration || null;
        consolidated[idx].muxStatus = asset.status;
      }
      
      fetched++;
      console.log(`     ✅ Fetched: ${upload.asset_id}`);
    } else {
      console.log(`     ⚠️  No asset_id in upload response`);
      failed++;
    }
    
    // Rate limiting
    await new Promise(r => setTimeout(r, 300));
    
  } catch (error) {
    console.log(`     ❌ Error: ${error.message}`);
    failed++;
  }
}

// Save updated consolidated
fs.writeFileSync('consolidated_videos.json', JSON.stringify(consolidated, null, 2));

console.log('\n=====================================');
console.log('📊 Fetch Summary');
console.log('=====================================');
console.log(`✅ Fetched: ${fetched}`);
console.log(`❌ Failed: ${failed}`);

const nowWithAsset = consolidated.filter(v => v.muxAssetId).length;
console.log(`\n📊 Videos with Asset ID: ${nowWithAsset}/${consolidated.length}`);
