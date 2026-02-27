import puppeteer from "puppeteer";
import fs from "fs";
import { execSync } from "child_process";

// Test a specific problematic video
const TEST_VIDEO = {
  title: "The Secret Room -  Gragger",
  episodeUrl: "https://toveedo.com/programs/collection-the-secret-room?cid=4038299&permalink=the-secret-room-purim-2-0bfad6",
  videoUrl: "https://stream.mux.com/02Qb5NilJa5Ikpo6yg6Cwg018szYxMVNZo.m3u8?token=eyJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIwMlFiNU5pbEphNUlrcG82eWc2Q3dnMDE4c3pZeE1WTlpvIiwiZXhwIjoxNzcyMDkzMzU5LCJraWQiOiJibEJBSzhkSENmaTIzcXZsYlZyQ1Fpb1pic3JrVnM2UCIsImF1ZCI6InYifQ.ojGLF5jfKtJNeU8F__0VkUzPIZAtJU7k3IuTDLSLRpeB1E9OZu6nvTopfP2fKG28dZ6c_bgx8KABDoQ5KTgTmRta2wDoBy3UHPOjHmdHM1m_K2DhVXEygEt59VVXbskW-6ZdlrNzQ6tCyKhd2ZItoeCg5vKpoEJZJEWCIQx9JOj5DfyX0L1IwhZ76PNW1ALi9_hEjK1f8_ww5byeQQnNO8w_mEZPBKdjMXD0XTRDa3_RIMY1tQ6jn2WjDDaZVXkvByK199QotF0P3xDXuBhZTUzw0DI8tnSwVW5yQakqD8lCZFxqRoryCYY937hUgBfk4MS5FtSf6C4uDXSKN2vD5w"
};

// Token expiry function (same as refresh_tokens.js)
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

// Login function (same as refresh_tokens.js)
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

// Test the refresh process
async function testRefresh() {
  console.log("=== TOKEN REFRESH DEBUG TEST ===\n");
  
  // 1. Check current token
  console.log("1. Checking current token:");
  const exp = getTokenExpiry(TEST_VIDEO.videoUrl);
  if (exp) {
    const nowSecs = Math.floor(Date.now() / 1000);
    console.log(`   Token expires: ${new Date(exp * 1000)}`);
    console.log(`   Current time:  ${new Date()}`);
    console.log(`   Difference:    ${((exp - nowSecs) / 60).toFixed(1)} minutes`);
    console.log(`   Status:        ${exp <= nowSecs ? 'EXPIRED' : 'VALID'}\n`);
  } else {
    console.log("   No token found or invalid format\n");
  }

  // 2. Test episode page scraping
  console.log("2. Testing episode page scraping:");
  console.log(`   Episode URL: ${TEST_VIDEO.episodeUrl}`);
  
  const browser = await puppeteer.launch({
    headless: true,
    args: ["--no-sandbox", "--disable-setuid-sandbox"],
    userDataDir: "./puppeteer_session",
  });

  const page = await browser.newPage();
  await page.setViewport({ width: 1280, height: 800 });
  
  try {
    // Login
    await login(page);
    
    // Try to scrape episode page
    console.log("   Navigating to episode page...");
    await page.goto(TEST_VIDEO.episodeUrl, {
      waitUntil: "domcontentloaded",
      timeout: 30000,
    });
    await new Promise((r) => setTimeout(r, 6000));

    // Extract video info
    const { title, src } = await page.evaluate(() => {
      const h2 = document.querySelector("h2");
      const titleText = h2 ? h2.textContent.trim() : "";

      const source = document.querySelector("source");
      const srcText = source ? source.src : "";

      return { title: titleText, src: srcText };
    });

    console.log(`   Found title: "${title}"`);
    console.log(`   Found video URL: ${src ? 'YES' : 'NO'}`);
    
    if (src) {
      console.log(`   New URL: ${src.substring(0, 100)}...`);
      
      // 3. Check new token
      console.log("\n3. Checking refreshed token:");
      const newExp = getTokenExpiry(src);
      if (newExp) {
        const nowSecs = Math.floor(Date.now() / 1000);
        console.log(`   New token expires: ${new Date(newExp * 1000)}`);
        console.log(`   Time remaining:    ${((newExp - nowSecs) / 60).toFixed(1)} minutes`);
        console.log(`   Status:            ${newExp <= nowSecs ? 'EXPIRED' : 'VALID'}\n`);
        
        // 4. Test if URL is actually downloadable
        console.log("4. Testing if URL is downloadable:");
        try {
          const testCommand = `ffmpeg -i "${src}" -t 1 -f null - 2>&1 | head -5`;
          console.log("   Testing with ffmpeg probe...");
          const ffmpegOutput = execSync(testCommand, { encoding: 'utf8', timeout: 15000 });
          console.log("   ✅ URL is accessible via ffmpeg");
          console.log(`   Output: ${ffmpegOutput.split('\n')[0]}`);
        } catch (error) {
          console.log("   ❌ URL failed ffmpeg test");
          console.log(`   Error: ${error.message}`);
        }
      } else {
        console.log("   ❌ No valid token in refreshed URL");
      }
    } else {
      console.log("   ❌ No video source found on page");
      
      // Debug: check what's actually on the page
      const pageContent = await page.evaluate(() => {
        return {
          title: document.title,
          h1: document.querySelector('h1')?.textContent || 'No h1',
          h2: document.querySelector('h2')?.textContent || 'No h2',
          hasSource: !!document.querySelector('source'),
          hasVideo: !!document.querySelector('video'),
          bodyText: document.body.textContent.substring(0, 200)
        };
      });
      console.log("   Page debug info:", pageContent);
    }
    
  } catch (error) {
    console.log(`   ❌ Error: ${error.message}`);
  }

  await browser.close();
  console.log("\n=== TEST COMPLETE ===");
}

testRefresh().catch(console.error);