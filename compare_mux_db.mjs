import Mux from '@mux/mux-node';
import dotenv from 'dotenv';
import { Pool } from 'pg';
dotenv.config();

const mux = new Mux({
  tokenId: process.env.MUX_TOKEN_ID,
  tokenSecret: process.env.MUX_TOKEN_SECRET,
});

const pool = new Pool({
  connectionString: "postgresql://postgres.qaocxxcpjabmlabufjyh:KolboAdmin2026Secure@aws-0-us-west-2.pooler.supabase.com:5432/postgres?pgbouncer=true",
  max: 3,
});

console.log('1. Fetching DB asset IDs...');
const client = await pool.connect();
const dbResult = await client.query('SELECT "muxAssetId" FROM video_assets WHERE "muxAssetId" IS NOT NULL');
client.release();
await pool.end();

const dbAssetIds = new Set(dbResult.rows.map(r => r.muxAssetId));
console.log(`   Found ${dbAssetIds.size} non-failed assets in the database.\n`);

console.log('2. Fetching all Mux assets (paginated)...');
const PAGE_SIZE = 100;
let page = 1;
let allAssets = [];
let fetched;

do {
  const response = await mux.video.assets.list({ limit: PAGE_SIZE, page: page });
  fetched = response.data ?? response;
  allAssets = allAssets.concat(fetched);
  process.stdout.write(`\r   Fetched ${allAssets.length} assets (page ${page})...`);
  page++;
  await new Promise(r => setTimeout(r, 100)); // Rate limit
} while (fetched.length === PAGE_SIZE);

console.log(`\n\n3. Comparing Mux vs Database...`);

// Filter to just Toveedo assets that are 'ready'
const toveedoReady = allAssets.filter(a => {
  if (a.status !== 'ready') return false;
  const extId = a.meta?.external_id || '';
  const passthrough = a.passthrough || '';
  return extId.includes('toveedo') || passthrough.includes('toveedo');
});

const muxReadyIds = new Set(toveedoReady.map(a => a.id));

// Compare
const inMuxNotInDb = toveedoReady.filter(a => !dbAssetIds.has(a.id));
const inDbNotInMuxReady = [...dbAssetIds].filter(id => !id.startsWith('temp-') && !muxReadyIds.has(id));

console.log('=== COMPARISON RESULTS ===');
console.log(`Total ready Toveedo assets on Mux: ${toveedoReady.length}`);
console.log(`Total assets in Database:          ${dbAssetIds.size}`);
console.log(`\nMissing from DB (In Mux, Not in DB): ${inMuxNotInDb.length}`);
console.log(`Zombie in DB (In DB, Not ready in Mux): ${inDbNotInMuxReady.length}`);

if (inMuxNotInDb.length > 0) {
  console.log('\nSample assets missing from DB (need to be imported):');
  inMuxNotInDb.slice(0, 10).forEach(a => {
    const title = a.passthrough || a.meta?.external_id || 'Unknown Title';
    console.log(`  Mux ID: ${a.id}`);
    console.log(`  Context: ${title}`);
    console.log(`  Duration: ${Math.round(a.duration || 0)}s\n`);
  });
}

if (inDbNotInMuxReady.length > 0) {
  console.log('\nSample zombie assets in DB (no longer ready on Mux):');
  inDbNotInMuxReady.slice(0, 5).forEach(id => {
    console.log(`  ${id}`);
  });
}
