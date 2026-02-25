import dotenv from "dotenv";
import fs from "fs";
dotenv.config();
import Mux from "@mux/mux-node";

const mux = new Mux({
  tokenId: process.env.MUX_TOKEN_ID,
  tokenSecret: process.env.MUX_TOKEN_SECRET,
});

const filePath = './uploaded_videos.json';
const uploadedVideos = JSON.parse(fs.readFileSync(filePath, 'utf8'));
const entries = Object.entries(uploadedVideos);

console.log(`Found ${entries.length} videos`);
console.log('Retrieving asset IDs...\n');

async function getAssetIdFromUploadId(uploadId) {
  try {
    const upload = await mux.video.uploads.retrieve(uploadId);
    return upload.asset_id;
  } catch (error) {
    return null;
  }
}

async function retrieveAllAssetIds() {
  const batchSize = 50;
  
  for (let i = 0; i < entries.length; i += batchSize) {
    const batch = entries.slice(i, i + batchSize);
    console.log(`Processing batch ${Math.floor(i / batchSize) + 1} of ${Math.ceil(entries.length / batchSize)} (${i + 1}-${Math.min(i + batchSize, entries.length)})`);
    
    for (const [key, value] of batch) {
      if (value.uploadId) {
        const assetId = await getAssetIdFromUploadId(value.uploadId);
        uploadedVideos[key].assetId = assetId;
        if (assetId) {
          console.log(`  ${value.title}: ${assetId}`);
        } else {
          console.log(`  ${value.title}: No asset ID found`);
        }
      }
    }
    
    fs.writeFileSync(filePath, JSON.stringify(uploadedVideos, null, 2));
    console.log(`Saved batch ${Math.floor(i / batchSize) + 1}\n`);
  }
  
  console.log('Done!');
}

retrieveAllAssetIds().catch(console.error);
