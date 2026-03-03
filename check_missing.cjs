const fs = require('fs');

const raw = JSON.parse(fs.readFileSync('uploaded_videos_vps.json', 'utf-8'));
const consolidated = JSON.parse(fs.readFileSync('consolidated_videos.json', 'utf-8'));

console.log('Missing videos analysis:');
console.log('=======================');

// Videos in raw but not in consolidated with assetId
const missingFromConsolidated = [];

for (const [key, video] of Object.entries(raw)) {
  // Check if this video is in consolidated with an assetId
  const inConsolidated = consolidated.find(c => 
    c.muxUploadId === video.muxUploadId || 
    c.episodeUrl === video.episodeUrl
  );
  
  if (!inConsolidated || !inConsolidated.muxAssetId) {
    missingFromConsolidated.push({
      key: key.substring(0, 60),
      title: video.title,
      hasAssetId: !!video.assetId,
      hasUploadId: !!video.muxUploadId
    });
  }
}

console.log('Missing from consolidated (no assetId):', missingFromConsolidated.length);
console.log('');

// Group by reason
const withAssetId = missingFromConsolidated.filter(v => v.hasAssetId);
const withUploadOnly = missingFromConsolidated.filter(v => !v.hasAssetId && v.hasUploadId);
const withNothing = missingFromConsolidated.filter(v => !v.hasAssetId && !v.hasUploadId);

console.log('Breakdown:');
console.log('  Have assetId in raw but not in consolidated:', withAssetId.length);
console.log('  Have uploadId only:', withUploadOnly.length);
console.log('  Have nothing:', withNothing.length);

console.log('');
console.log('Sample with nothing:');
withNothing.slice(0, 3).forEach(v => {
  console.log('  -', v.title);
});

console.log('');
console.log('Sample with uploadId only:');
withUploadOnly.slice(0, 3).forEach(v => {
  console.log('  -', v.title);
});
