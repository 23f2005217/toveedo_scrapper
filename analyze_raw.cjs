const fs = require('fs');

const raw = JSON.parse(fs.readFileSync('uploaded_videos_vps.json', 'utf-8'));
const entries = Object.entries(raw);

console.log('Raw uploaded_videos_vps.json analysis:');
console.log('=====================================');
console.log('Total entries:', entries.length);

let withAssetId = 0;
let withUploadIdOnly = 0;
let withNeither = 0;

for (const [key, video] of entries) {
  if (video.assetId) {
    withAssetId++;
  } else if (video.muxUploadId) {
    withUploadIdOnly++;
  } else {
    withNeither++;
  }
}

console.log('With assetId:', withAssetId);
console.log('With muxUploadId only:', withUploadIdOnly);
console.log('With neither:', withNeither);
console.log('');
console.log('Total that should be in consolidated:', withAssetId + withUploadIdOnly);
