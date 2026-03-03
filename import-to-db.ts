#!/usr/bin/env node
/**
 * Import already-uploaded Mux videos into the database
 * 
 * This script reads the uploaded_videos_vps.json file which contains
 * videos that were scraped from toveedo and uploaded to Mux, then
 * creates the corresponding Video and VideoAsset records in the database.
 */

import { PrismaClient } from '@prisma/client';
import { readFileSync, existsSync, writeFileSync } from 'fs';
import { join, dirname } from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

const prisma = new PrismaClient();

// Path to the uploaded videos JSON file
const UPLOADED_VIDEOS_PATH = join(__dirname, 'uploaded_videos_vps.json');
const PROGRESS_FILE = join(__dirname, 'import_progress.json');

// Configuration
const BATCH_SIZE = 10;
const DRY_RUN = process.env.DRY_RUN === 'true';

async function loadUploadedVideos() {
  if (!existsSync(UPLOADED_VIDEOS_PATH)) {
    throw new Error(`Uploaded videos file not found: ${UPLOADED_VIDEOS_PATH}`);
  }

  const content = readFileSync(UPLOADED_VIDEOS_PATH, 'utf-8');
  const videos = JSON.parse(content);
  
  console.log(`Loaded ${Object.keys(videos).length} videos from uploaded_videos_vps.json`);
  return videos;
}

function loadProgress() {
  if (!existsSync(PROGRESS_FILE)) {
    return { completed: [], failed: [], skipped: [] };
  }
  const content = readFileSync(PROGRESS_FILE, 'utf-8');
  return JSON.parse(content);
}

function saveProgress(progress) {
  writeFileSync(PROGRESS_FILE, JSON.stringify(progress, null, 2));
}

function extractPlaybackIdFromUrl(videoUrl) {
  // Extract playback ID from Mux URL like https://stream.mux.com/PLAYBACK_ID.m3u8
  const match = videoUrl.match(/stream\.mux\.com\/([a-zA-Z0-9]+)\.m3u8/);
  return match ? match[1] : null;
}

function slugify(title) {
  return title
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/(^-|-$)+/g, '')
    .substring(0, 50);
}

async function videoExists(muxAssetId, muxUploadId) {
  // Check if a video with this muxAssetId or muxUploadId already exists
  const existing = await prisma.videoAsset.findFirst({
    where: {
      OR: [
        { muxAssetId: muxAssetId || undefined },
        { muxUploadId: muxUploadId || undefined },
      ],
    },
    include: { video: true },
  });
  
  return existing;
}

async function importVideo(videoKey, videoData, progress) {
  const { 
    title, 
    muxUploadId, 
    assetId, 
    videoUrl, 
    originalVideoUrl,
    episodeUrl,
    playlistUrl,
    status 
  } = videoData;

  // Skip if already processed
  if (progress.completed.includes(videoKey)) {
    console.log(`  ⏭️  Skipping (already imported): ${title}`);
    return { status: 'skipped', reason: 'already_imported' };
  }

  // Skip if no assetId (upload may still be processing)
  if (!assetId) {
    console.log(`  ⏭️  Skipping (no assetId yet): ${title}`);
    return { status: 'skipped', reason: 'no_asset_id' };
  }

  // Check if video already exists in database
  const existing = await videoExists(assetId, muxUploadId);
  if (existing) {
    console.log(`  ⏭️  Skipping (exists in DB): ${title} -> Video ID: ${existing.video.id}`);
    progress.completed.push(videoKey);
    saveProgress(progress);
    return { status: 'skipped', reason: 'exists_in_db' };
  }

  if (DRY_RUN) {
    console.log(`  📝 Would import: ${title}`);
    console.log(`     - Asset ID: ${assetId}`);
    console.log(`     - Upload ID: ${muxUploadId}`);
    console.log(`     - Video URL: ${videoUrl || originalVideoUrl}`);
    return { status: 'dry_run' };
  }

  try {
    // Extract playback ID from the video URL if available
    const urlToUse = videoUrl || originalVideoUrl;
    const extractedPlaybackId = urlToUse ? extractPlaybackIdFromUrl(urlToUse) : null;

    // Generate a unique slug
    const slugBase = slugify(title);
    const slug = `${slugBase}-${Date.now()}`;

    // Create the video and its asset in a transaction
    const result = await prisma.$transaction(async (tx) => {
      // Create the Video record
      const video = await tx.video.create({
        data: {
          title: title || 'Untitled Video',
          slug: slug,
          status: 'unpublished', // All imported videos start as unpublished
          descriptionRich: `Imported from ${episodeUrl || playlistUrl || 'toveedo'}`,
        },
      });

      // Create the VideoAsset record
      const videoAsset = await tx.videoAsset.create({
        data: {
          videoId: video.id,
          muxAssetId: assetId,
          muxUploadId: muxUploadId,
          muxPlaybackId: extractedPlaybackId,
          status: 'ready', // These are already uploaded and ready
          isPrimary: true,
        },
      });

      return { video, videoAsset };
    });

    console.log(`  ✅ Imported: ${title} -> Video ID: ${result.video.id}`);
    progress.completed.push(videoKey);
    saveProgress(progress);
    
    return { 
      status: 'success', 
      videoId: result.video.id,
      assetId: result.videoAsset.id 
    };

  } catch (error) {
    console.error(`  ❌ Failed to import: ${title}`);
    console.error(`     Error: ${error.message}`);
    progress.failed.push({ key: videoKey, title, error: error.message });
    saveProgress(progress);
    return { status: 'failed', error: error.message };
  }
}

async function main() {
  console.log('🎬 Mux Video Import Script');
  console.log('==========================');
  console.log(`Mode: ${DRY_RUN ? 'DRY RUN (no DB changes)' : 'LIVE'}`);
  console.log('');

  try {
    // Load uploaded videos
    const videos = await loadUploadedVideos();
    const videoEntries = Object.entries(videos);
    
    // Load progress
    const progress = loadProgress();
    console.log(`Progress: ${progress.completed.length} completed, ${progress.failed.length} failed, ${progress.skipped.length} skipped`);
    console.log('');

    let successCount = 0;
    let skipCount = 0;
    let failCount = 0;

    // Process videos in batches
    for (let i = 0; i < videoEntries.length; i += BATCH_SIZE) {
      const batch = videoEntries.slice(i, i + BATCH_SIZE);
      console.log(`\n📦 Processing batch ${Math.floor(i / BATCH_SIZE) + 1}/${Math.ceil(videoEntries.length / BATCH_SIZE)} (${i + 1}-${Math.min(i + BATCH_SIZE, videoEntries.length)} of ${videoEntries.length})`);
      
      for (const [videoKey, videoData] of batch) {
        const result = await importVideo(videoKey, videoData, progress);
        
        if (result.status === 'success') successCount++;
        else if (result.status === 'skipped' || result.status === 'dry_run') skipCount++;
        else if (result.status === 'failed') failCount++;

        // Small delay to avoid overwhelming the database
        await new Promise(resolve => setTimeout(resolve, 100));
      }
    }

    console.log('\n==========================');
    console.log('📊 Import Summary');
    console.log('==========================');
    console.log(`✅ Successfully imported: ${successCount}`);
    console.log(`⏭️  Skipped: ${skipCount}`);
    console.log(`❌ Failed: ${failCount}`);
    console.log(`📁 Progress saved to: ${PROGRESS_FILE}`);
    
    if (failCount > 0) {
      console.log('\n⚠️  Some videos failed to import. Check the progress file for details.');
    }

  } catch (error) {
    console.error('\n💥 Fatal error:', error.message);
    process.exit(1);
  } finally {
    await prisma.$disconnect();
  }
}

// Run the script
main();
