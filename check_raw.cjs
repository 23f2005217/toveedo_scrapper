const fs = require('fs');

const raw = JSON.parse(fs.readFileSync('uploaded_videos_vps.json', 'utf-8'));

// Sample entries with no assetId and no muxUploadId
const sample = Object.entries(raw).filter(([k, v]) => !v.assetId && !v.muxUploadId).slice(0, 5);

console.log('Sample entries with NO assetId and NO muxUploadId:');
sample.forEach(([key, video], i) => {
  console.log(`\n${i + 1}. Key: ${key.substring(0, 60)}`);
  console.log('   Title:', video.title);
  console.log('   Has assetId:', !!video.assetId);
  console.log('   Has muxUploadId:', !!video.muxUploadId);
  console.log('   Status:', video.status);
  console.log('   UploadedAt:', video.uploadedAt);
  console.log('   Keys:', Object.keys(video).join(', '));
});
