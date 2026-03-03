import fs from 'fs';
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

async function run() {
  const client = await pool.connect();
  const dbResult = await client.query('SELECT "muxAssetId", "videoId" FROM video_assets WHERE "muxAssetId" IS NOT NULL');
  client.release();

  const dbAssets = dbResult.rows;

  let page = 1;
  const PAGE_SIZE = 100;
  let allMuxAssets = [];
  let fetched;

  do {
    const response = await mux.video.assets.list({ limit: PAGE_SIZE, page });
    fetched = response.data ?? response;
    allMuxAssets = allMuxAssets.concat(fetched);
    page++;
  } while (fetched.length === PAGE_SIZE);

  const readyToveedoIds = new Set(allMuxAssets.filter(a => {
    if (a.status !== 'ready') return false;
    const extId = a.meta?.external_id || '';
    const passthrough = a.passthrough || '';
    return extId.includes('toveedo') || passthrough.includes('toveedo');
  }).map(a => a.id));

  const zombies = dbAssets.filter(asset => !readyToveedoIds.has(asset.muxAssetId));

  let sql = 'BEGIN;\n';
  for (const zombie of zombies) {
    sql += `DELETE FROM "video_assets" WHERE "muxAssetId" = '${zombie.muxAssetId}';\n`;
    if (zombie.videoId) {
      sql += `DELETE FROM "videos" WHERE id = '${zombie.videoId}';\n`;
    }
  }
  sql += 'COMMIT;\n';

  console.log(`Zombies total: ${zombies.length}`);
  console.log('\\nExecuting cleanup into Database...');
  const poolClient = await pool.connect();
  try {
    await poolClient.query(sql);
    console.log('Successfully cleaned up all zombie assets from the database!');
  } catch (err) {
    console.error('Error cleaning up database:', err);
  } finally {
    poolClient.release();
    await pool.end();
  }
}

run().catch(console.error);
