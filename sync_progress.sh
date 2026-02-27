#!/bin/bash

# Sync uploaded progress FROM VPS TO local (one-way only)
# Usage: ./sync_progress.sh [action]

VPS_HOST="root@143.110.192.199"
VPS_PATH="~/toveedo_scrapper/"

case "${1:-download}" in
    "download"|"")
        echo "Downloading latest VPS progress to local machine..."
        scp $VPS_HOST:$VPS_PATH/uploaded_videos.json ./uploaded_videos_vps.json 2>/dev/null
        
        if [ -f "./uploaded_videos_vps.json" ]; then
            vps_count=$(jq '. | length' uploaded_videos_vps.json)
            echo "VPS progress downloaded: $vps_count videos uploaded"
            echo "File saved as: uploaded_videos_vps.json"
            echo ""
            echo "To use as your local progress file:"
            echo "  mv uploaded_videos_vps.json uploaded_videos.json"
        else
            echo "Could not download VPS progress file"
        fi
        ;;
    
    "update")
        echo "Downloading and updating local progress file..."
        scp $VPS_HOST:$VPS_PATH/uploaded_videos.json ./uploaded_videos.json 2>/dev/null
        
        if [ -f "./uploaded_videos.json" ]; then
            local_count=$(jq '. | length' uploaded_videos.json)
            echo "Local progress updated with VPS data: $local_count videos"
        else
            echo "Could not update local progress file"
        fi
        ;;
    
    "compare")
        echo "Comparing local vs VPS progress..."
        if [ -f "uploaded_videos.json" ]; then
            local_count=$(jq '. | length' uploaded_videos.json)
            echo "Local uploaded count: $local_count"
        else
            echo "No local uploaded_videos.json found"
        fi
        
        vps_count=$(ssh $VPS_HOST "cd $VPS_PATH && if [ -f uploaded_videos.json ]; then jq '. | length' uploaded_videos.json; else echo '0'; fi" 2>/dev/null)
        echo "VPS uploaded count: $vps_count"
        ;;
    
    *)
        echo "Usage: $0 [action]"
        echo "Actions:"
        echo "  download  - Download VPS progress as uploaded_videos_vps.json (default)"
        echo "  update    - Download VPS progress and replace local uploaded_videos.json"
        echo "  compare   - Compare upload counts between local and VPS"
        echo ""
        echo "SAFE: This script only syncs FROM VPS TO local (never causes duplicates)"
        ;;
esac