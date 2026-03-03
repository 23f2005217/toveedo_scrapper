/**
 * Execute SQL import in batches
 */

import fs from 'fs';
import { fileURLToPath } from 'url';
import path from 'path';
import { Pool } from 'pg';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const DATABASE_URL = "postgresql://postgres.qaocxxcpjabmlabufjyh:KolboAdmin2026Secure@aws-0-us-west-2.pooler.supabase.com:5432/postgres?pgbouncer=true";
const SQL_FILE = path.join(__dirname, 'import_videos_full.sql');
const BATCH_SIZE = 10; // Number of video inserts per batch

const pool = new Pool({
  connectionString: DATABASE_URL,
  max: 5,
});

async function executeBatch(statements) {
  const client = await pool.connect();
  try {
    await client.query('BEGIN');
    for (const stmt of statements) {
      await client.query(stmt);
    }
    await client.query('COMMIT');
    return { success: true };
  } catch (error) {
    await client.query('ROLLBACK');
    return { success: false, error: error.message };
  } finally {
    client.release();
  }
}

async function main() {
  console.log('🎬 Toveedo Video Import - Batch Execution');
  console.log('==========================================\n');
  
  // Read SQL file
  const sqlContent = fs.readFileSync(SQL_FILE, 'utf-8');
  
  // Split into individual statements
  const allStatements = sqlContent
    .split(';')
    .map(s => s.trim())
    .filter(s => s.length > 0 && !s.startsWith('--'))
    .map(s => s + ';');
  
  console.log(`📁 Total SQL statements: ${allStatements.length}`);
  
  // Group into batches (each video = 2 statements: video + asset)
  const batches = [];
  for (let i = 0; i < allStatements.length; i += BATCH_SIZE * 2) {
    batches.push(allStatements.slice(i, i + BATCH_SIZE * 2));
  }
  
  console.log(`📦 Number of batches: ${batches.length}`);
  console.log(`🎯 Batch size: ${BATCH_SIZE} videos per batch\n`);
  
  let successCount = 0;
  let failCount = 0;
  
  for (let i = 0; i < batches.length; i++) {
    const batch = batches[i];
    console.log(`\n📦 Executing batch ${i + 1}/${batches.length} (${batch.length} statements)...`);
    
    const result = await executeBatch(batch);
    
    if (result.success) {
      successCount++;
      console.log(`  ✅ Batch ${i + 1} completed`);
    } else {
      failCount++;
      console.log(`  ❌ Batch ${i + 1} failed: ${result.error}`);
    }
    
    // Small delay between batches
    if (i < batches.length - 1) {
      await new Promise(resolve => setTimeout(resolve, 500));
    }
  }
  
  console.log('\n==========================================');
  console.log('📊 Import Summary');
  console.log('==========================================');
  console.log(`✅ Successful batches: ${successCount}/${batches.length}`);
  console.log(`❌ Failed batches: ${failCount}/${batches.length}`);
  
  // Final count
  const countResult = await pool.query('SELECT COUNT(*) as total FROM videos WHERE "subsiteId" = $1', ['300fccf5-1c86-41e8-a756-dd64fc2d06ab']);
  console.log(`📊 Total videos in Toveedo subsite: ${countResult.rows[0].total}`);
  
  await pool.end();
}

main().catch(err => {
  console.error('💥 Fatal error:', err);
  process.exit(1);
});
