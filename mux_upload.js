import Mux from '@mux/mux-node';
import dotenv from 'dotenv';
dotenv.config();

import fs from "fs";
import axios from "axios";

const mux = new Mux({
  tokenId: process.env.MUX_TOKEN_ID,
  tokenSecret: process.env.MUX_TOKEN_SECRET
});

export async function uploadToMux(filePath) {
  try {
    const upload = await mux.video.uploads.create({
      cors_origin: '*', 
      new_asset_settings: {
        playback_policy: ['public'],
        video_quality: 'basic'
      }
    });

    const uploadUrl = upload.url;
    console.log(`[MUX UPLOAD] Created upload URL. Uploading ${filePath}...`);

    const fileStream = fs.createReadStream(filePath);
    const stats = fs.statSync(filePath);

    await axios.put(uploadUrl, fileStream, {
      headers: {
        'Content-Type': 'video/mp4',
        'Content-Length': stats.size,
      },
      maxBodyLength: Infinity,
      maxContentLength: Infinity
    });

    console.log(`[MUX UPLOAD SUCCESS] Uploaded ${filePath}.`);
    return upload.id;
  } catch (error) {
    console.error(`[MUX ERROR] Failed to upload ${filePath}:`, error.message);
    throw error;
  }
}