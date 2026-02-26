import fs from 'fs';
import path from 'path';
import { spawn } from "node:child_process";
import puppeteer from 'puppeteer';
import { uploadToMux } from './mux_upload.js';

const INPUT_FILE = 'direct_videos.json';
const DOWNLOAD_DIR = 'downloads';
const UPLOADED_FILE = 'uploaded_videos.json';
const CONCURRENCY_LIMIT = 2; // Reduced for VPS memory constraints
const BATCH_SIZE = 50; // Process videos in smaller batches

let isShuttingDown = false;
const activeProcesses = new Set();
let globalBrowser = null;

// Memory monitoring
function logMemoryUsage() {
  const used = process.memoryUsage();
  console.log(`[MEMORY] RSS: ${Math.round(used.rss / 1024 / 1024)}MB, Heap: ${Math.round(used.heapUsed / 1024 / 1024)}MB`);
}

// Force garbage collection every few operations
function forceGC() {
  if (global.gc) {
    global.gc();
  }
}

process.on('SIGINT', () => {
  console.log('\n[INFO] Gracefully shutting down... Stopping downloads and uploads. (Press Ctrl+C again to force quit)');
  isShuttingDown = true;
  for (const p of activeProcesses) {
    try { p.kill('SIGINT'); } catch(e) {}
  }
  if (globalBrowser) {
    try { globalBrowser.close(); } catch(e) {}
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

function getTokenExpiry(videoUrl) {
  try {
    const match = videoUrl.match(/[?&]token=([^&]+)/);
    if (!match) return null;
    const payload = match[1].split('.')[1];
    const decoded = JSON.parse(Buffer.from(payload, 'base64').toString('utf8'));
    return decoded.exp || null;
  } catch (e) {
    return null;
  }
}

// Memory-optimized token refresh - reuse single page
async function refreshTokenUrl(page, episodeUrl) {
  try {
    await page.goto(episodeUrl, { waitUntil: 'domcontentloaded', timeout: 30000 });
    await new Promise((r) => setTimeout(r, 6000));
    const src = await page.evaluate(() => {
      const source = document.querySelector('source');
      return source ? source.src : null;
    });
    return src || null;
  } catch (e) {
    console.error(`[REFRESH] Failed to re-scrape ${episodeUrl}: ${e.message}`);
    return null;
  }
}

async function login(page) {
  console.log('[LOGIN] Checking login status...');
  await page.goto('https://toveedo.com/catalog', { waitUntil: 'domcontentloaded' });
  const isSignedIn = await page.$('a[href="/sign_out"]');
  if (isSignedIn) {
    console.log('[LOGIN] Already logged in, skipping.');
    return;
  }

  console.log('[LOGIN] Not logged in, performing login...');
  await page.goto('https://toveedo.com/sign_in?passwordless=false&email=1%401.com', { waitUntil: 'domcontentloaded' });

  try {
    const emailInput = await page.$('input[type="email"]');
    if (emailInput) {
      const emailValue = await page.evaluate((el) => el.value, emailInput);
      if (!emailValue) await emailInput.type('1@1.com');
    }
    await page.waitForSelector('input[type="password"]', { timeout: 10000 });
    await page.type('input[type="password"]', '11111111');
    await Promise.all([
      page.evaluate(() => { const btn = document.querySelector('[type="submit"]'); if (btn) btn.click(); }),
      page.waitForNavigation({ waitUntil: 'domcontentloaded', timeout: 30000 }),
    ]);
    await new Promise((r) => setTimeout(r, 5000));
    console.log('[LOGIN] Login successful.');
  } catch (e) {
    console.error(`[LOGIN] Login failed: ${e.message}`);
  }
}

function downloadVideo(videoUrl, outputPath, title) {
  return new Promise((resolve) => {
    if (isShuttingDown) return resolve({ success: false, reason: 'shutdown' });

    if (fs.existsSync(outputPath)) {
      console.log(`[SKIP] Already downloaded: ${title}`);
      return resolve({ success: true });
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
        resolve({ success: true });
      } else {
        const snippet = errorOutput.substring(0, 300);
        console.error(`[ERROR] FFmpeg exited with code ${code} for ${title}. Info: ${snippet}...`);
        if (fs.existsSync(outputPath)) {
          fs.unlinkSync(outputPath);
        }
        resolve({ success: false, reason: snippet });
      }
    });
    
    ffmpeg.on("error", (err) => {
      activeProcesses.delete(ffmpeg);
      console.error(`[ERROR] Failed to start FFmpeg for ${title}: ${err.message}`);
      resolve({ success: false, reason: err.message });
    });
  });
}

async function processBatch(videos, uploadedVideos, refreshPage) {
  const queue = [...videos];
  
  async function worker(workerId) {
    while (queue.length > 0 && !isShuttingDown) {
      const item = queue.shift();
      const playlistName = sanitize(extractPlaylistName(item.playlistUrl));
      const videoTitle = sanitize(item.title) || `Video_${Math.floor(Math.random() * 100000)}`;
      
      if (uploadedVideos[item.videoUrl]) {
        const entry = uploadedVideos[item.videoUrl];
        if (entry.status === 'failed') {
          console.log(`[RETRY] Previously failed, retrying: ${videoTitle}`);
        } else {
          console.log(`[SKIP] Already processed: ${videoTitle}`);
          continue;
        }
      }

      // Check token expiry
      let videoUrl = item.videoUrl;
      const exp = getTokenExpiry(videoUrl);
      if (exp !== null) {
        const nowSecs = Math.floor(Date.now() / 1000);
        if (exp <= nowSecs) {
          console.warn(`[TOKEN] Expired for: ${videoTitle} — re-scraping episode page...`);
          if (!item.episodeUrl) {
            console.error(`[TOKEN] No episodeUrl to re-scrape for: ${videoTitle}, skipping.`);
            uploadedVideos[item.videoUrl] = {
              title: item.title,
              episodeUrl: item.episodeUrl,
              playlistUrl: item.playlistUrl,
              originalVideoUrl: item.videoUrl,
              status: 'failed',
              failReason: 'token_expired_no_episode_url',
              failedAt: new Date().toISOString(),
            };
            saveProgress(uploadedVideos);
            continue;
          }
          
          const freshUrl = await refreshTokenUrl(refreshPage, item.episodeUrl);
          if (!freshUrl) {
            console.error(`[TOKEN] Could not get fresh URL for: ${videoTitle}, skipping.`);
            uploadedVideos[item.videoUrl] = {
              title: item.title,
              episodeUrl: item.episodeUrl,
              playlistUrl: item.playlistUrl,
              originalVideoUrl: item.videoUrl,
              status: 'failed',
              failReason: 'token_refresh_failed',
              failedAt: new Date().toISOString(),
            };
            saveProgress(uploadedVideos);
            continue;
          }
          console.log(`[TOKEN] Got fresh URL for: ${videoTitle}`);
          videoUrl = freshUrl;
        }
      }
      
      const outputPath = path.join(DOWNLOAD_DIR, playlistName, `${videoTitle}.mp4`);
      
      try {
        const { success, reason } = await downloadVideo(videoUrl, outputPath, videoTitle);
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
        } else if (!success && !isShuttingDown) {
          console.error(`[Worker ${workerId}] Marking as failed: ${videoTitle}`);
          uploadedVideos[item.videoUrl] = {
            title: item.title,
            episodeUrl: item.episodeUrl,
            playlistUrl: item.playlistUrl,
            originalVideoUrl: item.videoUrl,
            status: 'failed',
            failReason: reason || 'unknown',
            failedAt: new Date().toISOString(),
          };
          saveProgress(uploadedVideos);
        }
        
        // Trigger GC every 5 processed videos
        if (queue.length % 5 === 0) {
          forceGC();
        }
        
      } catch (e) {
        console.error(`[Worker ${workerId}] Failed on ${videoTitle}: ${e.message}`);
        uploadedVideos[item.videoUrl] = {
          title: item.title,
          episodeUrl: item.episodeUrl,
          playlistUrl: item.playlistUrl,
          originalVideoUrl: item.videoUrl,
          status: 'failed',
          failReason: e.message,
          failedAt: new Date().toISOString(),
        };
        saveProgress(uploadedVideos);
      }
    }
  }

  console.log(`Processing batch of ${videos.length} videos with ${CONCURRENCY_LIMIT} workers...`);
  const workers = [];
  for (let i = 0; i < CONCURRENCY_LIMIT; i++) {
    workers.push(worker(i + 1));
  }
  await Promise.all(workers);
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

  globalBrowser = await puppeteer.launch({
    headless: true,
    args: [
      '--no-sandbox', 
      '--disable-setuid-sandbox',
      '--disable-dev-shm-usage',
      '--disable-web-security',
      '--disable-features=VizDisplayCompositor',
      '--max-old-space-size=512'
    ],
    userDataDir: './puppeteer_session',
  });

  // Login once and create a dedicated refresh page
  const initPage = await globalBrowser.newPage();
  await initPage.setViewport({ width: 1280, height: 800 });
  await login(initPage);
  
  // Keep one page for token refresh operations
  const refreshPage = await globalBrowser.newPage();
  await refreshPage.setViewport({ width: 1280, height: 800 });
  
  await initPage.close();

  let uploadedVideos = loadProgress();

  // Filter out already processed videos
  const unprocessedVideos = videos.filter(video => !uploadedVideos[video.videoUrl] || uploadedVideos[video.videoUrl].status === 'failed');
  
  console.log(`Processing ${unprocessedVideos.length} unprocessed videos in batches of ${BATCH_SIZE}...`);
  logMemoryUsage();

  // Process in batches to prevent memory overload
  for (let i = 0; i < unprocessedVideos.length && !isShuttingDown; i += BATCH_SIZE) {
    const batch = unprocessedVideos.slice(i, i + BATCH_SIZE);
    console.log(`\n[BATCH] Processing videos ${i + 1} to ${Math.min(i + BATCH_SIZE, unprocessedVideos.length)} of ${unprocessedVideos.length}`);
    
    await processBatch(batch, uploadedVideos, refreshPage);
    
    logMemoryUsage();
    forceGC();
    
    // Small delay between batches
    await new Promise(r => setTimeout(r, 2000));
  }

  await globalBrowser.close();
  console.log('\nAll downloads completed!');
  logMemoryUsage();
}

main().catch(console.error);