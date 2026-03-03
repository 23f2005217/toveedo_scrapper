import Mux from '@mux/mux-node';
import dotenv from 'dotenv';
dotenv.config();

const mux = new Mux({
  tokenId: process.env.MUX_TOKEN_ID,
  tokenSecret: process.env.MUX_TOKEN_SECRET,
});

console.log('Fetching all Mux assets (paginated)...');

const PAGE_SIZE = 100;
let page = 1;
let allAssets = [];
let fetched;

do {
  const response = await mux.video.assets.list({ limit: PAGE_SIZE, page: page });
  fetched = response.data ?? response;
  allAssets = allAssets.concat(fetched);
  process.stdout.write(`\r  Fetched ${allAssets.length} assets (page ${page})...`);
  page++;
  await new Promise(r => setTimeout(r, 100)); // Rate limit
} while (fetched.length === PAGE_SIZE);

console.log(`\n\nTotal Mux assets fetched: ${allAssets.length}`);

// Find Toveedo assets (check passthrough OR meta.external_id)
const toveedo = allAssets.filter(a => {
  const extId = a.meta?.external_id || '';
  const passthrough = a.passthrough || '';
  return extId.includes('toveedo') || passthrough.includes('toveedo');
});

const byStatus = {};
for (const a of toveedo) {
  byStatus[a.status] = (byStatus[a.status] || 0) + 1;
}

const ready = toveedo.filter(a => a.status === 'ready');
const errored = toveedo.filter(a => a.status === 'errored');
const preparing = toveedo.filter(a => a.status === 'preparing');
const other = toveedo.filter(a => !['ready','errored','preparing'].includes(a.status));

console.log('\n=== Toveedo Assets on Mux ===');
console.log(`(Matched via meta.external_id or passthrough)`);
console.log(`\nTotal Toveedo: ${toveedo.length}`);
console.log(`  ready:      ${ready.length}`);
console.log(`  preparing:  ${preparing.length}`);
console.log(`  errored:    ${errored.length}`);
console.log(`  other:      ${other.length}`);

if (errored.length > 0) {
  console.log('\nErrored assets (first 5):');
  errored.slice(0, 5).forEach(a => {
    console.log(`  ${a.id} | error: ${JSON.stringify(a.errors)}`);
  });
}
