import { Pool } from 'pg';
import crypto from 'crypto';

const pool = new Pool({
  connectionString: "postgresql://postgres.qaocxxcpjabmlabufjyh:KolboAdmin2026Secure@aws-0-us-west-2.pooler.supabase.com:5432/postgres?pgbouncer=true",
  max: 3,
});

async function run() {
  const client = await pool.connect();
  console.log("Connected to DB...");
  
  try {
    // 1. Check if 'Toveedo' subsite exists
    let subsiteRes = await client.query('SELECT id, name, slug FROM "subsites" WHERE slug = $1', ['toveedo']);
    let subsiteId;

    if (subsiteRes.rows.length === 0) {
      console.log("Subsite 'toveedo' not found, creating it...");
      subsiteId = crypto.randomUUID();
      await client.query(`
        INSERT INTO "subsites" (id, name, slug, description, "isActive", "createdAt", "updatedAt") 
        VALUES ($1, $2, $3, $4, $5, NOW(), NOW())
      `, [subsiteId, 'Toveedo', 'toveedo', 'Official Toveedo Channel', true]);
      console.log(`Created Subsite 'Toveedo' with ID: ${subsiteId}`);
    } else {
      subsiteId = subsiteRes.rows[0].id;
      console.log(`Found existing Subsite 'Toveedo' with ID: ${subsiteId}`);
    }

    console.log("Starting bulk update of videos...");
    
    // 2. Perform the update
    const updateResult = await client.query(`
      UPDATE "videos" 
      SET 
        status = 'published', 
        "subsiteId" = $1,
        "isFree" = false, 
        "publishedAt" = COALESCE("publishedAt", NOW()),
        "updatedAt" = NOW()
    `, [subsiteId]);

    console.log(`Successfully published ${updateResult.rowCount} videos and assigned them to Toveedo channel.`);
    
  } catch (err) {
    console.error('Error running migrations:', err);
  } finally {
    client.release();
    await pool.end();
  }
}

run().catch(console.error);
