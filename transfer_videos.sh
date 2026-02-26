#!/bin/bash

# VPS Transfer Script
# Usage: ./transfer_videos.sh <vps-ip>

if [ $# -eq 0 ]; then
    echo "Usage: $0 <vps-ip-address>"
    echo "Example: $0 192.168.1.100"
    exit 1
fi

VPS_IP=$1
VPS_USER=${VPS_USER:-root}
VPS_PATH=${VPS_PATH:-toveedo_scrapper/}

echo "Transferring video list to VPS..."
echo "Target: ${VPS_USER}@${VPS_IP}:${VPS_PATH}"

# Check if direct_videos.json exists locally
if [ ! -f "direct_videos.json" ]; then
    echo "Error: direct_videos.json not found locally"
    exit 1
fi

# Show local stats
LOCAL_COUNT=$(jq 'length' direct_videos.json 2>/dev/null || echo "unknown")
echo "Local videos: $LOCAL_COUNT"

# Transfer the file
echo "Transferring direct_videos.json..."
scp direct_videos.json ${VPS_USER}@${VPS_IP}:${VPS_PATH}

if [ $? -eq 0 ]; then
    echo "Transfer successful!"
    echo ""
    echo "Next steps on VPS:"
    echo "1. Verify: wc -l direct_videos.json"
    echo "2. Run: nohup node download.js > upload.log 2>&1 &"
    echo "3. Monitor: tail -f upload.log"
else
    echo "Transfer failed!"
    exit 1
fi