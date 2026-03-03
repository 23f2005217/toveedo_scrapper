const fs = require('fs');

const uploadedVps = JSON.parse(fs.readFileSync('uploaded_videos_vps.json', 'utf-8'));
const consolidated = JSON.parse(fs.readFileSync('consolidated_videos.json', 'utf-8'));

console.log('RECOUNT:');
console.log('========');
console.log('');

// Count in uploaded_videos_vps.json
let uploadedVpsCount = Object.keys(uploadedVps).length;
console.log('uploaded_videos_vps.json total entries:', uploadedVpsCount);

let vpsWithAsset = 0;
let vpsWithUploadOnly = 0;
let vpsWithNothing = 0;

for (const [key, video] of Object.entries(uploadedVps)) {
  if (video.assetId) {
    vpsWithAsset++;
  } else if (video.muxUploadId) {
    vpsWithUploadOnly++;
  } else {
    vpsWithNothing++;
  }
}

console.log('  - With assetId:', vpsWithAsset);
console.log('  - With uploadId only:', vpsWithUploadOnly);
console.log('  - With nothing:', vpsWithNothing);
console.log('');

// Count in consolidated
console.log('consolidated_videos.json total:', consolidated.length);
console.log('  - With muxAssetId:', consolidated.filter(v => v.muxAssetId).length);
console.log('  - With muxUploadId only:', consolidated.filter(v => v.muxUploadId && !v.muxAssetId).length);
console.log('  - With nothing:', consolidated.filter(v => !v.muxUploadId && !v.muxAssetId).length);
console.log('  - Status=uploaded:', consolidated.filter(v => v.status === 'uploaded').length);
console.log('');

// Check for duplicates in consolidated
const seen = new Set();
const duplicates = [];
for (const video of consolidated) {
  const key = video.muxUploadId || video.episodeUrl || video.id;
  if (seen.has(key)) {
    duplicates.push(video.title);
  } else {
    seen.add(key);
  }
}
console.log('Duplicates in consolidated:', duplicates.length);
