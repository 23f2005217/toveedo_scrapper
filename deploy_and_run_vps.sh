#!/bin/bash

# VPS deployment and download starter script
# Usage: ./deploy_and_run_vps.sh

VPS_HOST="root@143.110.192.199"
VPS_PATH="~/toveedo_scrapper/"

echo "Deploying to VPS and starting download process..."

# 1. Upload all files except downloads folder and VPS state files
echo "Uploading project files to VPS (excluding downloads folder and preserving VPS state)..."
rsync -av --progress \
    --exclude 'downloads/' \
    --exclude '.git/' \
    --exclude 'node_modules/' \
    --exclude 'puppeteer_session/' \
    --exclude 'uploaded_videos.json' \
    --exclude 'uploaded_videos_vps.json' \
    --exclude '*.log' \
    ./ $VPS_HOST:$VPS_PATH

echo "Files uploaded successfully"

# 2. Install dependencies on VPS if needed
echo "Installing dependencies on VPS..."
ssh $VPS_HOST "cd $VPS_PATH && npm install --production"

# 3. Create tmux session and start download process with logging
echo "Starting download process in tmux session..."
ssh $VPS_HOST << 'EOF'
cd ~/toveedo_scrapper

# Kill existing tmux session if it exists
tmux kill-session -t toveedo-download 2>/dev/null || true

# Create new tmux session and start download process
tmux new-session -d -s toveedo-download -c ~/toveedo_scrapper

# Send commands to the tmux session
tmux send-keys -t toveedo-download 'echo "Starting download process at $(date)"' C-m
tmux send-keys -t toveedo-download 'node download_optimized.js 2>&1 | tee -a upload.log' C-m

echo "Download process started in tmux session 'toveedo-download'"
echo "To monitor progress:"
echo "   ssh root@143.110.192.199"
echo "   tmux attach -t toveedo-download  (to attach to session)"
echo "   tail -f ~/toveedo_scrapper/upload.log  (to view logs)"
echo "   tmux detach  (Ctrl+B then D to detach)"
EOF

echo "Deployment complete!"
echo ""
echo "VPS Management Commands:"
echo "   ssh root@143.110.192.199"
echo "   tmux attach -t toveedo-download    # Attach to running session"
echo "   tmux ls                           # List tmux sessions"
echo "   tail -f ~/toveedo_scrapper/upload.log  # View live logs"
echo "   tmux kill-session -t toveedo-download   # Stop the process"
echo ""
echo "To check status:"
echo "   ssh root@143.110.192.199 'tail -20 ~/toveedo_scrapper/upload.log'"