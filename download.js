import fs from 'fs';
import path from 'path';
import { spawn } from "node:child_process";
import { uploadToMux } from './mux_upload.js';

const INPUT_FILE = 'direct_videos.json';
const DOWNLOAD_DIR = 'downloads';
const UPLOADED_FILE = 'uploaded_videos.json';
const CONCURRENCY_LIMIT = 3; // Number of parallel downloads. 3 is a safe number to not get blocked.

let isShuttingDown = false;
const activeProcesses = new Set();

process.on('SIGINT', () => {
  console.log('\n[INFO] Gracefully shutting down... Stopping downloads and uploads. (Press Ctrl+C again to force quit)');
  isShuttingDown = true;
  for (const p of activeProcesses) {
    try { p.kill('SIGINT'); } catch(e) {}
  }
});

function sanitize(name) {
  return name.replace(/[<>:"\/\\|?*]+/g, '_').trim();
}

function loadProgress() {
  if (fs.existsSync(UPLOADED_FILE)) {
    try {
      return JSON.parse(fs.readFileSync(UPLOADED_FILE, 'utf8'));
    } catch (e) {
      console.error(`Error reading ${UPLOADED_FILE}: ${e.message}`);
    }
  }
  return {};
}

function saveProgress(data) {
  fs.writeFileSync(UPLOADED_FILE, JSON.stringify(data, null, 2));
}

function extractPlaylistName(url) {
  try {
    const urlObj = new URL(url);
    const pathParts = urlObj.pathname.split('/');
    return pathParts[pathParts.length - 1];
  } catch (e) {
    return 'unknown_playlist';
  }
}

function downloadVideo(videoUrl, outputPath, title) {
  return new Promise((resolve) => {
    if (isShuttingDown) return resolve(false);

    if (fs.existsSync(outputPath)) {
      console.log(`[SKIP] Already downloaded: ${title}`);
      return resolve(true);
    }

    console.log(`[DOWNLOADING] ${title}...`);
    
    fs.mkdirSync(path.dirname(outputPath), { recursive: true });

    const ffmpeg = spawn("ffmpeg", [
      "-i", videoUrl,
      "-c", "copy",
      "-bsf:a", "aac_adtstoasc",
      "-movflags", "frag_keyframe+empty_moov",
      outputPath,
      "-y"
    ]);

    activeProcesses.add(ffmpeg);

    let errorOutput = '';
    ffmpeg.stderr.on("data", (data) => {
        errorOutput += data.toString();
    });

    ffmpeg.on("close", (code) => {
      activeProcesses.delete(ffmpeg);
      
      if (code === 0 && !isShuttingDown) {
        console.log(`[SUCCESS] Downloaded: ${title}`);
        resolve(true);
      } else {
        console.error(`[ERROR] FFmpeg exited with code ${code} for ${title}. Info: ${errorOutput.substring(0, 200)}...`);
        if (fs.existsSync(outputPath)) {
          fs.unlinkSync(outputPath);
        }
        resolve(false);
      }
    });
    
    ffmpeg.on("error", (err) => {
      activeProcesses.delete(ffmpeg);
      console.error(`[ERROR] Failed to start FFmpeg for ${title}: ${err.message}`);
      resolve(false);
    });
  });
}

async function main() {
  if (!fs.existsSync(INPUT_FILE)) {
    console.error(`Input file ${INPUT_FILE} not found. Please wait for the scraper to produce some results or ensure the name is correct.`);
    return;
  }

  let videos = [];
  try {
    videos = JSON.parse(fs.readFileSync(INPUT_FILE, 'utf8'));
    console.log(`Loaded ${videos.length} videos from ${INPUT_FILE}. starting downloader...`);
  } catch (e) {
    console.error(`Error reading or parsing ${INPUT_FILE}: ${e.message}`);
    return;
  }

  const queue = [...videos];
  let uploadedVideos = loadProgress();

  async function worker(workerId) {
    while (queue.length > 0 && !isShuttingDown) {
      const item = queue.shift();
      const playlistName = sanitize(extractPlaylistName(item.playlistUrl));
      
      const videoTitle = sanitize(item.title) || `Video_${Math.floor(Math.random() * 100000)}`;
      
      if (uploadedVideos[item.videoUrl]) {
        console.log(`[SKIP] Already processed: ${videoTitle}`);
        continue;
      }
      
      const outputPath = path.join(DOWNLOAD_DIR, playlistName, `${videoTitle}.mp4`);
      
      try {
        const success = await downloadVideo(item.videoUrl, outputPath, videoTitle);
        if (success && !isShuttingDown) {
          const uploadResult = await uploadToMux(outputPath, item);
          
          uploadedVideos[item.videoUrl] = {
            title: item.title,
            episodeUrl: item.episodeUrl,
            playlistUrl: item.playlistUrl,
            originalVideoUrl: item.videoUrl,
            uploadId: uploadResult.uploadId,
            uploadUrl: uploadResult.uploadUrl,
            status: uploadResult.status,
            metadata: uploadResult.metadata,
            uploadedAt: uploadResult.uploadedAt
          };
          saveProgress(uploadedVideos);
          
          if (fs.existsSync(outputPath)) {
            fs.unlinkSync(outputPath);
            console.log(`[CLEANUP] Deleted local file: ${outputPath}`);
          }
        }
      } catch (e) {
        console.error(`[Worker ${workerId}] Failed on ${videoTitle}: ${e.message}`);
      }
    }
  }

  console.log(`Spawning ${CONCURRENCY_LIMIT} parallel download workers...\n`);
  const workers = [];
  for (let i = 0; i < CONCURRENCY_LIMIT; i++) {
    workers.push(worker(i + 1));
  }
  await Promise.all(workers);
  console.log('\nAll downloads completed!');
}

main();
