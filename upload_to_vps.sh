#!/bin/bash

# Upload refreshed video files and cleaned progress to VPS
# Usage: ./upload_to_vps.sh

VPS_HOST="root@143.110.192.199"
VPS_PATH="~/toveedo_scrapper/"

echo "=== Uploading files to VPS ==="

# Check that direct_videos.json exists
if [ ! -f "direct_videos.json" ]; then
    echo "ERROR: direct_videos.json not found!"
    exit 1
fi

# Upload direct_videos.json (with fresh tokens)
echo "Uploading direct_videos.json with fresh tokens..."
scp direct_videos.json $VPS_HOST:$VPS_PATH
echo "Done."

# Upload cleaned uploaded_videos.json
echo "Uploading uploaded_videos.json (cleaned, base-URL keys)..."
scp uploaded_videos.json $VPS_HOST:$VPS_PATH
echo "Done."

echo ""
echo "=== Upload complete ==="
echo "VPS now has fresh tokens and clean progress tracking."
echo "Run deploy_and_run_vps.sh to start the download process."

