import puppeteer from "puppeteer";
import fs from "fs";

const INPUT_FILE = "direct_videos.json";
const UPLOADED_FILE = "uploaded_videos.json";
const CONCURRENCY_LIMIT = 40; // Number of parallel tabs to run!

// Build a Set of already-uploaded base URLs from uploaded_videos.json
function loadUploadedBaseUrls() {
  if (!fs.existsSync(UPLOADED_FILE)) return new Set();
  try {
    const uploaded = JSON.parse(fs.readFileSync(UPLOADED_FILE, "utf8"));
    // Keys are already base URLs (normalized)
    const urls = Object.keys(uploaded).filter(
      (key) => uploaded[key].status !== "failed",
    );
    console.log(
      `Loaded ${urls.length} already-uploaded base URLs from ${UPLOADED_FILE}.`,
    );
    return new Set(urls);
  } catch (e) {
    console.error(`Could not load uploaded videos: ${e.message}`);
    return new Set();
  }
}

// Strip JWT token from URL to get stable base URL
function getBaseUrl(videoUrl) {
  return videoUrl.split("?")[0];
}

// Returns the exp timestamp (seconds) from a JWT token in the URL, or null if no token.
function getTokenExpiry(videoUrl) {
  try {
    const match = videoUrl.match(/[?&]token=([^&]+)/);
    if (!match) return null;
    const payload = match[1].split(".")[1];
    const decoded = JSON.parse(Buffer.from(payload, "base64").toString("utf8"));
    return decoded.exp || null;
  } catch (e) {
    return null;
  }
}

// Check if a token is expired
function isTokenExpired(videoUrl) {
  const exp = getTokenExpiry(videoUrl);
  if (exp === null) return false; // No token means it might be a direct URL
  const nowSecs = Math.floor(Date.now() / 1000);
  return exp <= nowSecs;
}

async function login(page) {
  console.log("Checking login status...");
  await page.goto("https://toveedo.com/catalog", {
    waitUntil: "domcontentloaded",
  });
  const isSignedIn = await page.$('a[href="/sign_out"]');

  if (isSignedIn) {
    console.log("Already logged in! Skipping login steps.");
    return;
  }

  console.log("Not logged in. Performing login...");
  await page.goto(
    "https://toveedo.com/sign_in?passwordless=false&email=1%401.com",
    { waitUntil: "domcontentloaded" },
  );

  try {
    const emailInput = await page.$('input[type="email"]');
    if (emailInput) {
      const emailValue = await page.evaluate((el) => el.value, emailInput);
      if (!emailValue) {
        await emailInput.type("1@1.com");
      }
    }

    await page.waitForSelector('input[type="password"]', { timeout: 10000 });
    await page.type('input[type="password"]', "11111111");

    console.log("Clicking submit...");
    await Promise.all([
      page.evaluate(() => {
        const btn = document.querySelector('[type="submit"]');
        if (btn) btn.click();
      }),
      page.waitForNavigation({ waitUntil: "domcontentloaded", timeout: 30000 }),
    ]);

    await new Promise((r) => setTimeout(r, 5000));
    console.log("Login successful.");
  } catch (e) {
    console.log(`Login step failed or timed out: ${e.message}. Continuing...`);
  }
}

async function refreshTokens() {
  if (!fs.existsSync(INPUT_FILE)) {
    console.error(`Input file ${INPUT_FILE} not found.`);
    return;
  }

  let videos = [];
  try {
    videos = JSON.parse(fs.readFileSync(INPUT_FILE, "utf8"));
    console.log(`Loaded ${videos.length} videos from ${INPUT_FILE}`);
  } catch (e) {
    console.error(`Could not parse ${INPUT_FILE}: ${e.message}`);
    return;
  }

  const uploadedBaseUrls = loadUploadedBaseUrls();

  // Filter to only videos that need processing
  const videosToProcess = videos.filter((video) => {
    // Skip already uploaded (match by base URL)
    if (video.videoUrl && uploadedBaseUrls.has(getBaseUrl(video.videoUrl))) {
      return false;
    }

    // Include if no video URL (needs scraping)
    if (!video.videoUrl) {
      return true;
    }

    // Include if token is expired
    if (isTokenExpired(video.videoUrl)) {
      return true;
    }

    // Skip if token is still valid
    return false;
  });

  console.log(
    `Found ${videosToProcess.length} videos needing token refresh (out of ${videos.length} total)`,
  );
  console.log(`Skipping ${uploadedBaseUrls.size} already uploaded videos`);
  console.log(
    `Skipping ${videos.length - videosToProcess.length - uploadedBaseUrls.size} videos with valid tokens`,
  );

  if (videosToProcess.length === 0) {
    console.log("No videos need token refresh. Exiting.");
    return;
  }

  // Launch browser
  const browser = await puppeteer.launch({
    headless: true,
    args: ["--no-sandbox", "--disable-setuid-sandbox"],
    userDataDir: "./puppeteer_session",
  });

  // Login once
  const initPage = await browser.newPage();
  await initPage.setViewport({ width: 1280, height: 800 });
  await login(initPage);
  await initPage.close();

  // Create queue and results
  const queue = [...videosToProcess];
  const processedVideos = [...videos]; // Copy original array

  function saveResults() {
    fs.writeFileSync(INPUT_FILE, JSON.stringify(processedVideos, null, 2));
  }

  // Worker function
  async function worker(workerId) {
    const page = await browser.newPage();
    await page.setViewport({ width: 1280, height: 800 });

    while (queue.length > 0) {
      const video = queue.shift();
      console.log(
        `\n[Worker ${workerId}] Processing (${queue.length} remaining): ${video.title || "Untitled"}`,
      );
      console.log(`[Worker ${workerId}]   Episode: ${video.episodeUrl}`);

      if (video.videoUrl && isTokenExpired(video.videoUrl)) {
        console.log(`[Worker ${workerId}]   Token expired, refreshing...`);
      } else if (!video.videoUrl) {
        console.log(`[Worker ${workerId}]   No video URL, scraping...`);
      }

      try {
        await page.goto(video.episodeUrl, {
          waitUntil: "domcontentloaded",
          timeout: 30000,
        });
        await new Promise((r) => setTimeout(r, 6000));

        const { title, src } = await page.evaluate(() => {
          const h2 = document.querySelector("h2");
          const titleText = h2 ? h2.textContent.trim() : "";

          const source = document.querySelector("source");
          const srcText = source ? source.src : "";

          return { title: titleText, src: srcText };
        });

        if (src) {
          // Find and update the video in the processedVideos array
          const videoIndex = processedVideos.findIndex(
            (v) => v.episodeUrl === video.episodeUrl,
          );
          if (videoIndex !== -1) {
            processedVideos[videoIndex] = {
              ...processedVideos[videoIndex],
              title: title || processedVideos[videoIndex].title,
              videoUrl: src,
            };
            console.log(
              `[Worker ${workerId}]     REFRESHED: ${title} -> ${src.substring(0, 100)}...`,
            );
          }
          saveResults();
        } else {
          console.log(`[Worker ${workerId}]     No video source found`);
        }
      } catch (e) {
        console.error(
          `[Worker ${workerId}]     Error processing ${video.episodeUrl}: ${e.message}`,
        );
      }
    }

    await page.close();
  }

  // Start workers
  console.log(`\nSpawning ${CONCURRENCY_LIMIT} parallel browser tabs...\n`);
  const workers = [];
  for (let i = 0; i < CONCURRENCY_LIMIT; i++) {
    workers.push(worker(i + 1));
  }

  await Promise.all(workers);

  console.log("\nToken refresh completed!");
  console.log(`Results saved to: ${INPUT_FILE}`);

  // Show summary
  const refreshedVideos = processedVideos.filter((v) => v.videoUrl);
  const withValidTokens = refreshedVideos.filter(
    (v) => !isTokenExpired(v.videoUrl),
  );
  console.log(`Total videos: ${processedVideos.length}`);
  console.log(`Videos with URLs: ${refreshedVideos.length}`);
  console.log(`Videos with valid tokens: ${withValidTokens.length}`);

  await browser.close();
}

refreshTokens();

