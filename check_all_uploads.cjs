const fs = require('fs');

const raw = JSON.parse(fs.readFileSync('uploaded_videos_vps.json', 'utf-8'));

let hasUploadId = 0;
let hasAssetId = 0;
let hasOnlyUploadId = 0;

for (const [key, video] of Object.entries(raw)) {
  if (video.uploadId) hasUploadId++;
  if (video.assetId) hasAssetId++;
  if (video.uploadId && !video.assetId) hasOnlyUploadId++;
}

console.log('Analysis:');
console.log('  Total entries:', Object.keys(raw).length);
console.log('  Has uploadId:', hasUploadId);
console.log('  Has assetId:', hasAssetId);
console.log('  Has uploadId but NO assetId:', hasOnlyUploadId);
console.log('');
console.log('This means we can import:', hasAssetId, 'videos now');
console.log('And need to fetch assets for:', hasOnlyUploadId, 'videos');
