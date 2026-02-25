import fs from 'fs';
import path from 'path';
import { spawn } from "node:child_process";
import puppeteer from 'puppeteer';
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

// Returns the exp timestamp (seconds) from a JWT token in the URL, or null if no token.
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

// Re-scrapes the episode page to get a fresh video URL with a new token.
// Returns the fresh URL, or null on failure.
async function refreshTokenUrl(browser, episodeUrl) {
  let page;
  try {
    page = await browser.newPage();
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
  } finally {
    if (page) await page.close();
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

  const browser = await puppeteer.launch({
    headless: true,
    args: ['--no-sandbox', '--disable-setuid-sandbox'],
    userDataDir: './puppeteer_session',
  });

  // Login once — works from a fresh session on any machine
  const initPage = await browser.newPage();
  await initPage.setViewport({ width: 1280, height: 800 });
  await login(initPage);
  await initPage.close();

  const queue = [...videos];
  let uploadedVideos = loadProgress();

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

      // Check token expiry — refresh on-the-fly if expired
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
          const freshUrl = await refreshTokenUrl(browser, item.episodeUrl);
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

  console.log(`Spawning ${CONCURRENCY_LIMIT} parallel download workers...\n`);
  const workers = [];
  for (let i = 0; i < CONCURRENCY_LIMIT; i++) {
    workers.push(worker(i + 1));
  }
  await Promise.all(workers);

  await browser.close();
  console.log('\nAll downloads completed!');
}

main();
