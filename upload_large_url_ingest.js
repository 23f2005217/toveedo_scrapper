// upload_large_url_ingest.js
// Workaround for large files: uses Mux's URL-based ingest (POST /video/v1/assets with input URL).
// Mux fetches the HLS stream directly — no local download, no RAM, no file size limit.
// Reads all file_too_large entries from uploaded_videos.json, refreshes tokens via Puppeteer,
// then tells Mux to ingest each one by URL. Updates uploaded_videos.json on success.

import fs from 'fs';
import Mux from '@mux/mux-node';
import puppeteer from 'puppeteer';
import dotenv from 'dotenv';
dotenv.config();

const UPLOADED_FILE = 'uploaded_videos.json';

const mux = new Mux({
  tokenId: process.env.MUX_TOKEN_ID,
  tokenSecret: process.env.MUX_TOKEN_SECRET,
});

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
  if (isSignedIn) { console.log('[LOGIN] Already logged in.'); return; }

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
    console.error(`[LOGIN] Failed: ${e.message}`);
  }
}

async function refreshToken(page, episodeUrl) {
  await page.goto(episodeUrl, { waitUntil: 'domcontentloaded', timeout: 30000 });
  await new Promise((r) => setTimeout(r, 6000));
  return page.evaluate(() => {
    const source = document.querySelector('source');
    return source ? source.src : null;
  });
}

async function ingestUrlToMux(freshUrl, video) {
  const title = (video.title || 'Untitled').substring(0, 512);
  const externalId = (video.episodeUrl || '').substring(0, 128);
  const passthrough = (video.playlistUrl || '').substring(0, 255);

  console.log(`[MUX INGEST] Creating asset from URL for: ${title}`);

  const asset = await mux.video.assets.create({
    input: [{ url: freshUrl }],
    playback_policy: ['public'],
    video_quality: 'basic',
    meta: {
      title,
      external_id: externalId,
    },
    passthrough,
  });

  console.log(`[MUX INGEST] Asset created: ${asset.id} (status: ${asset.status})`);
  return asset;
}

async function main() {
  const uploadedVideos = loadProgress();

  // Find all failed entries
  const largeFailed = Object.entries(uploadedVideos).filter(
    ([, v]) => v.status === 'failed'
  );

  if (largeFailed.length === 0) {
    console.log('No failed entries found in uploaded_videos.json.');
    return;
  }

  console.log(`Found ${largeFailed.length} failed entries to process:`);
  largeFailed.forEach(([k, v]) => console.log(`  - ${v.title} (${v.failReason})`));

  // Launch browser to get fresh tokens
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

  for (const [baseKey, video] of largeFailed) {
    console.log(`\n--- ${video.title} (${video.failReason}) ---`);

    // Refresh token
    console.log(`[TOKEN] Refreshing token via: ${video.episodeUrl}`);
    let freshUrl = null;
    try {
      freshUrl = await refreshToken(page, video.episodeUrl);
    } catch (e) {
      console.error(`[TOKEN] Failed to refresh: ${e.message}`);
    }

    if (!freshUrl) {
      console.error(`[SKIP] No video source found on page for: ${video.title}`);
      continue;
    }

    console.log(`[TOKEN] Fresh URL obtained`);

    try {
      const asset = await ingestUrlToMux(freshUrl, video);

      // Save under the original base key so it replaces the failed entry
      uploadedVideos[baseKey] = {
        title: video.title,
        episodeUrl: video.episodeUrl,
        playlistUrl: video.playlistUrl,
        originalVideoUrl: video.originalVideoUrl,
        assetId: asset.id,
        status: 'uploaded',
        ingestType: 'url_ingest',
        uploadedAt: new Date().toISOString(),
      };
      saveProgress(uploadedVideos);
      console.log(`[DONE] Queued for ingest: ${video.title}`);
    } catch (e) {
      console.error(`[ERROR] Mux ingest failed for ${video.title}: ${e.message}`);
    }
  }

  await page.close();
  await browser.close();

  const uploaded = Object.values(uploadedVideos).filter((v) => v.status === 'uploaded').length;
  const failed = Object.values(uploadedVideos).filter((v) => v.status === 'failed').length;
  console.log(`\nDone. Total uploaded: ${uploaded} | Failed: ${failed}`);
}

main().catch(console.error);
