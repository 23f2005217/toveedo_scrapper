/**
 * Fetch missing Mux Asset IDs for videos that only have upload IDs
 * This script queries the Mux API to get asset information from upload IDs
 */

import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';
import Mux from '@mux/mux-node';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Initialize Mux client
const mux = new Mux({
  tokenId: process.env.MUX_TOKEN_ID,
  tokenSecret: process.env.MUX_TOKEN_SECRET,
});

const CONSOLIDATED_FILE = path.join(__dirname, 'consolidated_videos.json');
const PROGRESS_FILE = path.join(__dirname, 'asset_fetch_progress.json');

// Load consolidated videos
const videos = JSON.parse(fs.readFileSync(CONSOLIDATED_FILE, 'utf-8'));
console.log(`📁 Loaded ${videos.length} videos from consolidated_videos.json`);

// Load progress
let progress = { completed: [], failed: [], fetched: 0 };
if (fs.existsSync(PROGRESS_FILE)) {
  progress = JSON.parse(fs.readFileSync(PROGRESS_FILE, 'utf-8'));
}

// Find videos without asset IDs but with upload IDs
const videosNeedingFetch = videos.filter(v => 
  !v.muxAssetId && 
  v.muxUploadId && 
  !progress.completed.includes(v.muxUploadId) &&
  !progress.failed.find(f => f.uploadId === v.muxUploadId)
);

console.log(`🔍 Found ${videosNeedingFetch.length} videos needing asset ID fetch`);
console.log(`✅ Already fetched: ${progress.completed.length}`);
console.log(`❌ Previously failed: ${progress.failed.length}`);

// Fetch asset IDs in batches
const BATCH_SIZE = 10;
const DELAY_MS = 500; // Rate limiting

async function fetchAssetId(video) {
  try {
    console.log(`  🔍 Fetching asset for upload: ${video.muxUploadId}`);
    
    // Get upload details from Mux
    const upload = await mux.video.uploads.retrieve(video.muxUploadId);
    
    if (upload && upload.asset_id) {
      // Get asset details
      const asset = await mux.video.assets.retrieve(upload.asset_id);
      
      return {
        success: true,
        uploadId: video.muxUploadId,
        assetId: upload.asset_id,
        playbackId: asset.playback_ids?.[0]?.id || null,
        duration: asset.duration || null,
        status: asset.status
      };
    } else {
      return {
        success: false,
        uploadId: video.muxUploadId,
        error: 'No asset_id in upload response'
      };
    }
  } catch (error) {
    return {
      success: false,
      uploadId: video.muxUploadId,
      error: error.message
    };
  }
}

async function main() {
  let fetchedCount = 0;
  let failedCount = 0;
  
  for (let i = 0; i < videosNeedingFetch.length; i += BATCH_SIZE) {
    const batch = videosNeedingFetch.slice(i, i + BATCH_SIZE);
    console.log(`\n📦 Processing batch ${Math.floor(i / BATCH_SIZE) + 1}/${Math.ceil(videosNeedingFetch.length / BATCH_SIZE)} (${i + 1}-${Math.min(i + BATCH_SIZE, videosNeedingFetch.length)})`);
    
    for (const video of batch) {
      const result = await fetchAssetId(video);
      
      if (result.success) {
        // Update video in the array
        const videoIndex = videos.findIndex(v => v.muxUploadId === result.uploadId);
        if (videoIndex !== -1) {
          videos[videoIndex].muxAssetId = result.assetId;
          videos[videoIndex].muxPlaybackId = result.playbackId;
          videos[videoIndex].duration = result.duration;
          videos[videoIndex].muxStatus = result.status;
        }
        
        progress.completed.push(result.uploadId);
        fetchedCount++;
        console.log(`  ✅ Fetched: ${result.assetId} (duration: ${result.duration}s)`);
      } else {
        progress.failed.push({ uploadId: result.uploadId, error: result.error });
        failedCount++;
        console.log(`  ❌ Failed: ${result.error}`);
      }
      
      // Rate limiting delay
      await new Promise(resolve => setTimeout(resolve, DELAY_MS));
    }
    
    // Save progress after each batch
    fs.writeFileSync(CONSOLIDATED_FILE, JSON.stringify(videos, null, 2));
    fs.writeFileSync(PROGRESS_FILE, JSON.stringify(progress, null, 2));
  }
  
  console.log('\n✅ Asset ID Fetch Complete!');
  console.log('==========================');
  console.log(`Fetched: ${fetchedCount}`);
  console.log(`Failed: ${failedCount}`);
  
  // Final stats
  const withAssetId = videos.filter(v => v.muxAssetId).length;
  const withoutAssetId = videos.filter(v => !v.muxAssetId && v.status === 'uploaded').length;
  console.log(`\n📊 Videos with Asset ID: ${withAssetId}/${videos.length}`);
  console.log(`📊 Videos still missing Asset ID: ${withoutAssetId}`);
}

main().catch(console.error);
