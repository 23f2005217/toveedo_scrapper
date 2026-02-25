import { execSync } from 'node:child_process';
import { spawn } from 'node:child_process';

const INPUT_FILE = 'direct_videos.json';

// Pick a random token URL using jq — no reading the whole file into JS
function getRandomTokenUrl() {
  // Get total count first, then pick a random index
  const count = parseInt(
    execSync(`jq '[.[] | select(.videoUrl | contains("?token="))] | length' ${INPUT_FILE}`, { encoding: 'utf8' }).trim()
  );
  const idx = Math.floor(Math.random() * count);
  const result = execSync(
    `jq -r '[.[] | select(.videoUrl | contains("?token=")) | .videoUrl] | .[${idx}]' ${INPUT_FILE}`,
    { encoding: 'utf8' }
  ).trim();
  return result;
}

function checkUrl(videoUrl) {
  return new Promise((resolve) => {
    console.log(`\n[CHECK] Testing URL:\n  ${videoUrl}\n`);

    // Use ffmpeg to probe the URL — it will fail fast if token is expired/invalid
    const ffmpeg = spawn('ffmpeg', [
      '-v', 'verbose',
      '-i', videoUrl,
      '-t', '5',        // only try reading 5 seconds worth
      '-f', 'null',
      '-'
    ]);

    let output = '';
    ffmpeg.stderr.on('data', (data) => {
      output += data.toString();
    });

    ffmpeg.on('close', (code) => {
      if (code === 0) {
        console.log('[RESULT] Token is VALID — ffmpeg successfully read the stream.');
        resolve(true);
      } else {
        // Look for telltale signs of token expiry in the output
        const lower = output.toLowerCase();
        if (lower.includes('403') || lower.includes('forbidden') || lower.includes('token') || lower.includes('unauthorized') || lower.includes('401')) {
          console.log('[RESULT] Token appears EXPIRED / INVALID (403/401 response).');
        } else if (lower.includes('404')) {
          console.log('[RESULT] Resource not found (404) — URL may be stale.');
        } else {
          console.log(`[RESULT] ffmpeg failed with code ${code} — stream may be expired or unreachable.`);
        }
        console.log('\n[ffmpeg output (last 500 chars)]:\n' + output.slice(-500));
        resolve(false);
      }
    });

    ffmpeg.on('error', (err) => {
      console.error(`[ERROR] Failed to spawn ffmpeg: ${err.message}`);
      resolve(false);
    });
  });
}

async function main() {
  const videoUrl = getRandomTokenUrl();

  if (!videoUrl || videoUrl === 'null') {
    console.error('[ERROR] Could not find any token URL in direct_videos.json');
    process.exit(1);
  }

  await checkUrl(videoUrl);
}

main();
