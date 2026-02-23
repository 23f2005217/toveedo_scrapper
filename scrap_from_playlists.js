import puppeteer from 'puppeteer';
import fs from 'fs';

const PLAYLISTS_FILE = 'playlists.json';
const OUTPUT_FILE = 'direct_videos.json';
const VISITED_FILE = 'visited_direct_videos.json';
const CONCURRENCY_LIMIT = 5; // Number of parallel tabs to run!

// Initialize or load existing results to support resuming
let results = [];
let visitedVideos = [];

if (fs.existsSync(OUTPUT_FILE)) {
  try {
    results = JSON.parse(fs.readFileSync(OUTPUT_FILE, 'utf8'));
    console.log(`Loaded ${results.length} previously scraped videos from ${OUTPUT_FILE}`);
  } catch (e) {
    console.error(`Could not parse ${OUTPUT_FILE}, starting fresh.`);
  }
}

if (fs.existsSync(VISITED_FILE)) {
  try {
    visitedVideos = JSON.parse(fs.readFileSync(VISITED_FILE, 'utf8'));
    console.log(`Loaded ${visitedVideos.length} previously visited videos from ${VISITED_FILE}`);
  } catch (e) {
    console.error(`Could not parse ${VISITED_FILE}, starting fresh.`);
  }
}

function saveResults() {
  fs.writeFileSync(OUTPUT_FILE, JSON.stringify(results, null, 2));
}

function saveVisited() {
  fs.writeFileSync(VISITED_FILE, JSON.stringify(visitedVideos, null, 2));
}

async function login(page) {
  console.log('Checking login status...');
  await page.goto('https://toveedo.com/catalog', { waitUntil: 'domcontentloaded' });
  const isSignedIn = await page.$('a[href="/sign_out"]');
  
  if (isSignedIn) {
    console.log('Already logged in! Skipping login steps.');
    return;
  }

  console.log('Not logged in. Performing login...');
  await page.goto('https://toveedo.com/sign_in?passwordless=false&email=1%401.com', { waitUntil: 'domcontentloaded' });
  
  try {
    const emailInput = await page.$('input[type="email"]');
    if (emailInput) {
      const emailValue = await page.evaluate(el => el.value, emailInput);
      if (!emailValue) {
        await emailInput.type('1@1.com');
      }
    }

    await page.waitForSelector('input[type="password"]', { timeout: 10000 });
    await page.type('input[type="password"]', '11111111');
    
    console.log('Clicking submit...');
    await Promise.all([
      page.evaluate(() => {
        const btn = document.querySelector('[type="submit"]');
        if (btn) btn.click();
      }),
      page.waitForNavigation({ waitUntil: 'domcontentloaded', timeout: 30000 })
    ]);
    
    await new Promise(r => setTimeout(r, 5000));
    console.log('Login successful.');
  } catch (e) {
    console.log(`Login step failed or timed out: ${e.message}. Continuing...`);
  }
}

async function scrape() {
  if (!fs.existsSync(PLAYLISTS_FILE)) {
    console.error('Playlists file not found:', PLAYLISTS_FILE);
    return;
  }

  const playlists = JSON.parse(fs.readFileSync(PLAYLISTS_FILE, 'utf8'));
  console.log(`Loaded ${playlists.length} playlists to process.`);

  // Launch a single browser. Chrome handles tabs in separate processes automatically.
  const browser = await puppeteer.launch({ 
    headless: true,
    args: ['--no-sandbox', '--disable-setuid-sandbox'],
    userDataDir: './puppeteer_session' // Using the same session
  });
  
  // 1. Perform login once on a single page
  const initPage = await browser.newPage();
  await initPage.setViewport({ width: 1280, height: 800 });
  await login(initPage);
  await initPage.close();

  // 2. Set up our Queue
  const queue = [...playlists];
  
  // 3. Define the worker that will process playlists from the queue
  async function worker(workerId) {
    const page = await browser.newPage();
    await page.setViewport({ width: 1280, height: 800 });
    
    while (queue.length > 0) {
      const playlistUrl = queue.shift();
      console.log(`\n[Worker ${workerId}] Processing Playlist (${queue.length} remaining in queue): ${playlistUrl}`);
      
      try {
        await page.goto(playlistUrl, { waitUntil: 'domcontentloaded', timeout: 30000 });
        await new Promise(r => setTimeout(r, 4000));

        const episodeLinks = await page.evaluate(() => {
          return Array.from(document.querySelectorAll(".content-item.block.cursor-pointer")).map(e => e.href);
        });

        const uniqueEpisodes = [...new Set(episodeLinks)];
        console.log(`[Worker ${workerId}] Found ${uniqueEpisodes.length} episodes in playlist.`);

        for (const epUrl of uniqueEpisodes) {
          if (visitedVideos.includes(epUrl)) {
            console.log(`[Worker ${workerId}]   Skipping visited: ${epUrl}`);
            continue;
          }

          console.log(`[Worker ${workerId}]   Checking: ${epUrl}`);
          
          try {
            await page.goto(epUrl, { waitUntil: 'domcontentloaded', timeout: 30000 });
            await new Promise(r => setTimeout(r, 6000));

            const { title, src } = await page.evaluate(() => {
              const h2 = document.querySelector("h2");
              const titleText = h2 ? h2.textContent.trim() : "";
              
              const source = document.querySelector("source");
              const srcText = source ? source.src : "";

              return { title: titleText, src: srcText };
            });

            if (src) {
               console.log(`[Worker ${workerId}]     >>> FOUND: ${title} -> ${src}`);
               results.push({ playlistUrl, episodeUrl: epUrl, title, videoUrl: src });
               saveResults();
            } else {
               console.log(`[Worker ${workerId}]     --- No source found`);
            }

            visitedVideos.push(epUrl);
            saveVisited();
          } catch (e) {
            console.error(`[Worker ${workerId}]     Error episode ${epUrl}: ${e.message}`);
          }
        }
      } catch (e) {
        console.error(`[Worker ${workerId}] Error playlist ${playlistUrl}: ${e.message}`);
      }
    }
    
    await page.close();
  }

  // 4. Start the workers in parallel
  console.log(`\nSpawning ${CONCURRENCY_LIMIT} parallel browser tabs...\n`);
  const workers = [];
  for (let i = 0; i < CONCURRENCY_LIMIT; i++) {
    workers.push(worker(i + 1));
  }

  // 5. Wait for all tabs to finish
  await Promise.all(workers);

  console.log('\nAll playlists processed completely!');
  console.log(`Total videos found: ${results.length}`);
  
  await browser.close();
}

scrape();
