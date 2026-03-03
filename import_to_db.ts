/**
 * Import consolidated Toveedo videos into the database
 * 
 * This script creates Video and VideoAsset records for all uploaded videos
 * 
 * Usage:
 *   cd /home/gir/Desktop/programming/kolbo-monorepo/tovedo
 *   DATABASE_URL="postgresql://..." npx tsx import_to_db.ts
 */

import { PrismaClient, ContentStatus, AssetStatus } from '@prisma/client';
import { Pool } from 'pg';
import { PrismaPg } from '@prisma/adapter-pg';
import * as fs from 'fs';
import * as path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const TOVEEDO_SUBSITE_ID = '300fccf5-1c86-41e8-a756-dd64fc2d06ab';
const CONSOLIDATED_FILE = path.join(__dirname, 'consolidated_videos.json');
const PROGRESS_FILE = path.join(__dirname, 'db_import_progress.json');

// Get DATABASE_URL from environment
const DATABASE_URL = process.env.DATABASE_URL;
if (!DATABASE_URL) {
  console.error('❌ DATABASE_URL environment variable is required');
  console.error('Example: DATABASE_URL="postgresql://user:pass@host:5432/db" npx tsx import_to_db.ts');
  process.exit(1);
}

// Initialize Prisma with pg adapter
const pool = new Pool({
  connectionString: DATABASE_URL,
  max: 5,
});

const adapter = new PrismaPg(pool);
const prisma = new PrismaClient({ adapter });

// Configuration
const DRY_RUN = process.env.DRY_RUN === 'true';
const BATCH_SIZE = parseInt(process.env.BATCH_SIZE || '5');
const ONLY_WITH_ASSET_ID = process.env.ONLY_WITH_ASSET_ID !== 'false'; // Default true

interface ConsolidatedVideo {
  id: string;
  title: string;
  episodeUrl: string;
  playlistUrl: string | null;
  playlistName: string;
  muxUploadId: string | null;
  muxAssetId: string | null;
  muxPlaybackId: string | null;
  videoUrl: string;
  uploadedAt: string | null;
  status: string;
  source: string;
  duration?: number;
  muxStatus?: string;
}

interface ImportProgress {
  completed: string[]; // video IDs that were imported
  failed: Array<{ id: string; title: string; error: string }>;
  skipped: string[]; // video IDs that were skipped
}

function loadConsolidatedVideos(): ConsolidatedVideo[] {
  if (!fs.existsSync(CONSOLIDATED_FILE)) {
    throw new Error(`Consolidated file not found: ${CONSOLIDATED_FILE}`);
  }
  const content = fs.readFileSync(CONSOLIDATED_FILE, 'utf-8');
  return JSON.parse(content);
}

function loadProgress(): ImportProgress {
  if (!fs.existsSync(PROGRESS_FILE)) {
    return { completed: [], failed: [], skipped: [] };
  }
  const content = fs.readFileSync(PROGRESS_FILE, 'utf-8');
  return JSON.parse(content);
}

function saveProgress(progress: ImportProgress) {
  fs.writeFileSync(PROGRESS_FILE, JSON.stringify(progress, null, 2));
}

function slugify(title: string): string {
  return title
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/(^-|-$)+/g, '')
    .substring(0, 50);
}

async function checkVideoExists(muxAssetId: string | null, muxUploadId: string | null): Promise<boolean> {
  if (!muxAssetId && !muxUploadId) return false;
  
  const where: any = {};
  if (muxAssetId) where.muxAssetId = muxAssetId;
  if (muxUploadId) where.muxUploadId = muxUploadId;
  
  const existing = await prisma.videoAsset.findFirst({
    where,
  });
  
  return !!existing;
}

async function importVideo(video: ConsolidatedVideo, progress: ImportProgress): Promise<{ status: string; error?: string; videoId?: string }> {
  // Skip if already imported
  if (progress.completed.includes(video.id)) {
    return { status: 'already_imported' };
  }

  // Skip if no muxAssetId and ONLY_WITH_ASSET_ID is true
  if (ONLY_WITH_ASSET_ID && !video.muxAssetId) {
    return { status: 'skipped_no_asset_id' };
  }

  // Skip if not uploaded status
  if (video.status !== 'uploaded') {
    return { status: 'skipped_not_uploaded' };
  }

  // Check if already in database
  const exists = await checkVideoExists(video.muxAssetId, video.muxUploadId);
  if (exists) {
    console.log(`  ⏭️  Already in database: ${video.title}`);
    progress.completed.push(video.id);
    saveProgress(progress);
    return { status: 'already_in_db' };
  }

  if (DRY_RUN) {
    console.log(`  📝 DRY RUN - Would import:`);
    console.log(`     Title: ${video.title}`);
    console.log(`     Asset ID: ${video.muxAssetId}`);
    console.log(`     Playback ID: ${video.muxPlaybackId}`);
    console.log(`     Duration: ${video.duration}s`);
    return { status: 'dry_run' };
  }

  try {
    // Create video and asset in a transaction
    const result = await prisma.$transaction(async (tx) => {
      // Generate unique slug
      const slugBase = slugify(video.title);
      const slug = `${slugBase}-${Date.now()}`;

      // Create Video record
      const newVideo = await tx.video.create({
        data: {
          title: video.title,
          slug: slug,
          status: 'unpublished' as ContentStatus,
          subsiteId: TOVEEDO_SUBSITE_ID,
          descriptionRich: video.episodeUrl 
            ? `Imported from Toveedo<br>Original URL: <a href="${video.episodeUrl}" target="_blank">${video.episodeUrl}</a>`
            : 'Imported from Toveedo',
          isFree: false,
          hasAds: false,
        },
      });

      // Create VideoAsset record
      const newAsset = await tx.videoAsset.create({
        data: {
          videoId: newVideo.id,
          muxAssetId: video.muxAssetId || `temp-${Date.now()}`,
          muxPlaybackId: video.muxPlaybackId,
          muxUploadId: video.muxUploadId,
          status: video.muxStatus === 'ready' ? 'ready' as AssetStatus : 'preparing' as AssetStatus,
          durationSeconds: video.duration ? Math.round(video.duration) : null,
          isPrimary: true,
        },
      });

      return { video: newVideo, asset: newAsset };
    });

    console.log(`  ✅ Imported: ${video.title} -> Video ID: ${result.video.id}`);
    progress.completed.push(video.id);
    saveProgress(progress);
    
    return { 
      status: 'success', 
      videoId: result.video.id 
    };

  } catch (error: any) {
    console.error(`  ❌ Failed: ${video.title}`);
    console.error(`     Error: ${error.message}`);
    progress.failed.push({ id: video.id, title: video.title, error: error.message });
    saveProgress(progress);
    return { status: 'failed', error: error.message };
  }
}

async function main() {
  console.log('🎬 Toveedo Video Import to Database');
  console.log('=====================================');
  console.log(`Mode: ${DRY_RUN ? 'DRY RUN (no DB changes)' : 'LIVE'}`);
  console.log(`Batch size: ${BATCH_SIZE}`);
  console.log(`Only videos with Asset ID: ${ONLY_WITH_ASSET_ID}`);
  console.log('');

  // Verify subsite exists
  const subsite = await prisma.subsite.findUnique({
    where: { id: TOVEEDO_SUBSITE_ID }
  });
  
  if (!subsite) {
    console.error(`❌ Toveedo subsite not found with ID: ${TOVEEDO_SUBSITE_ID}`);
    console.error('Please create the subsite first.');
    process.exit(1);
  }
  
  console.log(`✅ Using subsite: ${subsite.name} (${subsite.id})`);
  console.log('');

  // Load consolidated videos
  const videos = loadConsolidatedVideos();
  console.log(`📁 Loaded ${videos.length} videos from consolidated_videos.json`);

  // Filter to only uploaded videos
  const videosToImport = videos.filter(v => v.status === 'uploaded');
  console.log(`🎯 ${videosToImport.length} videos with status 'uploaded'`);

  if (ONLY_WITH_ASSET_ID) {
    const withAssetId = videosToImport.filter(v => v.muxAssetId);
    console.log(`🎯 ${withAssetId.length} videos have Mux Asset ID (will be imported)`);
    console.log(`⏭️  ${videosToImport.length - withAssetId.length} videos missing Asset ID (will be skipped)`);
  }

  // Load progress
  const progress = loadProgress();
  console.log(`\n📊 Progress: ${progress.completed.length} completed, ${progress.failed.length} failed, ${progress.skipped.length} skipped`);
  console.log('');

  let successCount = 0;
  let skipCount = 0;
  let failCount = 0;

  // Process in batches
  const targetVideos = ONLY_WITH_ASSET_ID 
    ? videosToImport.filter(v => v.muxAssetId)
    : videosToImport;

  for (let i = 0; i < targetVideos.length; i += BATCH_SIZE) {
    const batch = targetVideos.slice(i, i + BATCH_SIZE);
    console.log(`\n📦 Batch ${Math.floor(i / BATCH_SIZE) + 1}/${Math.ceil(targetVideos.length / BATCH_SIZE)} (${i + 1}-${Math.min(i + BATCH_SIZE, targetVideos.length)})`);
    
    for (const video of batch) {
      const result = await importVideo(video, progress);
      
      if (result.status === 'success') successCount++;
      else if (result.status.includes('skip') || result.status === 'already_imported' || result.status === 'already_in_db' || result.status === 'dry_run') skipCount++;
      else if (result.status === 'failed') failCount++;

      // Small delay between each video
      if (!DRY_RUN) {
        await new Promise(resolve => setTimeout(resolve, 200));
      }
    }

    // Delay between batches
    if (!DRY_RUN && i + BATCH_SIZE < targetVideos.length) {
      console.log(`⏳ Waiting before next batch...`);
      await new Promise(resolve => setTimeout(resolve, 1000));
    }
  }

  console.log('\n=====================================');
  console.log('📊 Import Summary');
  console.log('=====================================');
  console.log(`✅ Successfully imported: ${successCount}`);
  console.log(`⏭️  Skipped: ${skipCount}`);
  console.log(`❌ Failed: ${failCount}`);
  console.log(`📁 Progress saved to: ${PROGRESS_FILE}`);

  if (failCount > 0) {
    console.log('\n⚠️  Some videos failed to import. Check the progress file for details.');
  }
}

main()
  .catch((error) => {
    console.error('\n💥 Fatal error:', error);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
    await pool.end();
  });
