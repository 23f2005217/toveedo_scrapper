// upload_large.js — download and upload the 4 file_too_large videos locally.
// Reads skipped_videos.json, refreshes tokens via Puppeteer, downloads with ffmpeg
// (no size limit), uploads to Mux, updates uploaded_videos.json.

import fs from 'fs';
import path from 'path';
import { spawn } from 'node:child_process';
import puppeteer from 'puppeteer';
import { uploadToMux } from './mux_upload.js';

const SKIPPED_FILE = 'skipped_videos.json';
const UPLOADED_FILE = 'uploaded_videos.json';
const DOWNLOAD_DIR = 'downloads_large';

function sanitize(name) {
  return name.replace(/[<>:"\/\\|?*]+/g, '_').trim();
}

function getBaseUrl(videoUrl) {
  return videoUrl.split('?')[0];
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

async function login(page) {
  console.log('[LOGIN] Checking login status...');
  await page.goto('https://toveedo.com/catalog', { waitUntil: 'domcontentloaded' });
  const isSignedIn = await page.$('a[href="/sign_out"]');
  if (isSignedIn) {
    console.log('[LOGIN] Already logged in.');
    return;
  }
  console.log('[LOGIN] Logging in...');
  await page.goto('https://toveedo.com/sign_in?passwordless=false&email=1%401.com', { waitUntil: 'domcontentloaded' });
  try {
    const emailInput = await page.$('input[type="email"]');
    if (emailInput) {
      const val = await page.evaluate((el) => el.value, emailInput);
      if (!val) await emailInput.type('1@1.com');
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

async function refreshToken(page, episodeUrl) {
  console.log(`[TOKEN] Refreshing token for: ${episodeUrl}`);
  await page.goto(episodeUrl, { waitUntil: 'domcontentloaded', timeout: 30000 });
  await new Promise((r) => setTimeout(r, 6000));
  const src = await page.evaluate(() => {
    const source = document.querySelector('source');
    return source ? source.src : null;
  });
  return src || null;
}

function downloadVideo(videoUrl, outputPath, title) {
  return new Promise((resolve) => {
    if (fs.existsSync(outputPath)) {
      console.log(`[SKIP] Already downloaded: ${title}`);
      return resolve({ success: true });
    }

    console.log(`[DOWNLOADING] ${title} (this may take a while for large files)...`);
    fs.mkdirSync(path.dirname(outputPath), { recursive: true });

    const ffmpeg = spawn('ffmpeg', [
      '-i', videoUrl,
      '-c', 'copy',
      '-bsf:a', 'aac_adtstoasc',
      outputPath,
      '-y'
    ]);

    let errorOutput = '';
    ffmpeg.stderr.on('data', (data) => { errorOutput += data.toString(); });

    ffmpeg.on('close', (code) => {
      if (code === 0) {
        const sizeMB = fs.existsSync(outputPath) ? Math.round(fs.statSync(outputPath).size / 1024 / 1024) : 0;
        console.log(`[SUCCESS] Downloaded: ${title} (${sizeMB}MB)`);
        resolve({ success: true });
      } else {
        console.error(`[ERROR] FFmpeg exited code ${code} for ${title}: ${errorOutput.substring(0, 300)}`);
        if (fs.existsSync(outputPath)) fs.unlinkSync(outputPath);
        resolve({ success: false, reason: errorOutput.substring(0, 300) });
      }
    });

    ffmpeg.on('error', (err) => {
      console.error(`[ERROR] Failed to start FFmpeg for ${title}: ${err.message}`);
      resolve({ success: false, reason: err.message });
    });
  });
}

async function main() {
  if (!fs.existsSync(SKIPPED_FILE)) {
    console.error(`${SKIPPED_FILE} not found.`);
    return;
  }

  const skipped = JSON.parse(fs.readFileSync(SKIPPED_FILE, 'utf8'));
  console.log(`Loaded ${skipped.length} large videos from ${SKIPPED_FILE}`);

  const uploadedVideos = loadProgress();

  // Filter already successfully uploaded
  const toProcess = skipped.filter((v) => {
    const base = v.base || getBaseUrl(v.originalVideoUrl);
    return !uploadedVideos[base] || uploadedVideos[base].status === 'failed';
  });

  if (toProcess.length === 0) {
    console.log('All large videos already uploaded.');
    return;
  }

  console.log(`Need to process: ${toProcess.length} videos`);

  // Launch browser for token refresh
  const browser = await puppeteer.launch({
    headless: true,
    args: ['--no-sandbox', '--disable-setuid-sandbox'],
    userDataDir: './puppeteer_session',
  });

  const initPage = await browser.newPage();
  await initPage.setViewport({ width: 1280, height: 800 });
  await login(initPage);
  await initPage.close();

  const page = await browser.newPage();
  await page.setViewport({ width: 1280, height: 800 });

  for (const video of toProcess) {
    const base = video.base || getBaseUrl(video.originalVideoUrl);
    const title = sanitize(video.title || 'Untitled');

    console.log(`\n--- Processing: ${video.title} ---`);

    // Refresh token
    const freshUrl = await refreshToken(page, video.episodeUrl);
    if (!freshUrl) {
      console.error(`[SKIP] Could not get fresh URL for: ${video.title}`);
      continue;
    }
    console.log(`[TOKEN] Fresh URL obtained`);

    const outputPath = path.join(DOWNLOAD_DIR, `${title}.mp4`);

    const { success, reason } = await downloadVideo(freshUrl, outputPath, title);
    if (!success) {
      uploadedVideos[base] = {
        title: video.title,
        episodeUrl: video.episodeUrl,
        playlistUrl: video.playlistUrl,
        originalVideoUrl: video.originalVideoUrl,
        status: 'failed',
        failReason: reason || 'download_failed',
        failedAt: new Date().toISOString(),
      };
      saveProgress(uploadedVideos);
      continue;
    }

    try {
      const uploadResult = await uploadToMux(outputPath, {
        title: video.title,
        episodeUrl: video.episodeUrl,
        playlistUrl: video.playlistUrl,
        videoUrl: video.originalVideoUrl,
      });

      uploadedVideos[base] = {
        title: video.title,
        episodeUrl: video.episodeUrl,
        playlistUrl: video.playlistUrl,
        originalVideoUrl: video.originalVideoUrl,
        uploadId: uploadResult.uploadId,
        uploadUrl: uploadResult.uploadUrl,
        status: uploadResult.status,
        metadata: uploadResult.metadata,
        uploadedAt: uploadResult.uploadedAt,
      };
      saveProgress(uploadedVideos);
      console.log(`[DONE] Uploaded: ${video.title}`);

      if (fs.existsSync(outputPath)) {
        fs.unlinkSync(outputPath);
        console.log(`[CLEANUP] Deleted local file: ${outputPath}`);
      }
    } catch (e) {
      console.error(`[MUX ERROR] Upload failed for ${video.title}: ${e.message}`);
      uploadedVideos[base] = {
        title: video.title,
        episodeUrl: video.episodeUrl,
        playlistUrl: video.playlistUrl,
        originalVideoUrl: video.originalVideoUrl,
        status: 'failed',
        failReason: e.message,
        failedAt: new Date().toISOString(),
      };
      saveProgress(uploadedVideos);
    }
  }

  await page.close();
  await browser.close();

  const uploaded = Object.values(uploadedVideos).filter((v) => v.status === 'uploaded').length;
  const failed = Object.values(uploadedVideos).filter((v) => v.status === 'failed').length;
  console.log(`\nDone. Total uploaded: ${uploaded}, Failed: ${failed}`);
}

main().catch(console.error);
