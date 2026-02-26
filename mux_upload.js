import Mux from '@mux/mux-node';
import dotenv from 'dotenv';
dotenv.config();

import fs from "fs";
import axios from "axios";

const mux = new Mux({
  tokenId: process.env.MUX_TOKEN_ID,
  tokenSecret: process.env.MUX_TOKEN_SECRET
});

export async function uploadToMux(filePath, metadata) {
  try {
    // Truncate title to fit Mux's 128 character limit
    const truncatedTitle = (metadata.title || 'Untitled Video').substring(0, 128);
    
    const upload = await mux.video.uploads.create({
      cors_origin: '*',
      new_asset_settings: {
        playback_policy: ['public'],
        video_quality: 'basic',
        meta: {
          title: truncatedTitle,
          external_id: metadata.episodeUrl || ''
        },
        passthrough: metadata.playlistUrl || ''
      }
    });

    const uploadUrl = upload.url;
    console.log(`[MUX UPLOAD] Created upload URL. Metadata: ${truncatedTitle}`);

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

    console.log(`[MUX UPLOAD SUCCESS] Upload initiated for ${truncatedTitle}`);

    return {
      uploadId: upload.id,
      uploadUrl: uploadUrl,
      status: 'uploaded',
      metadata: {
        title: truncatedTitle,
        episodeUrl: metadata.episodeUrl,
        playlistUrl: metadata.playlistUrl,
        originalVideoUrl: metadata.videoUrl,
        fileSize: stats.size
      },
      uploadedAt: new Date().toISOString()
    };
  } catch (error) {
    console.error(`[MUX ERROR] Failed to upload ${filePath}:`, error.message);
    throw error;
  }
}