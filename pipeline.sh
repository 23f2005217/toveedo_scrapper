#!/bin/bash

# End-to-end pipeline: refresh tokens locally, deploy to VPS, start download
# Usage: ./pipeline.sh [step]
#   ./pipeline.sh refresh   - Only refresh tokens locally
#   ./pipeline.sh deploy    - Only deploy to VPS and start download
#   ./pipeline.sh status    - Check VPS progress
#   ./pipeline.sh sync      - Download VPS progress to local
#   ./pipeline.sh           - Run full pipeline (refresh + deploy)

VPS_HOST="root@143.110.192.199"
VPS_PATH="~/toveedo_scrapper/"
STEP="${1:-full}"

refresh_tokens() {
    echo "=== Step 1: Refreshing tokens locally ==="
    echo "Running refresh_tokens.js with 40 parallel browser tabs..."
    echo "This updates direct_videos.json in-place with fresh JWT tokens."
    echo ""
    node refresh_tokens.js
    echo ""
    echo "Token refresh complete."
}

deploy_to_vps() {
    echo "=== Step 2: Deploying to VPS ==="

    # Upload code changes
    echo "Syncing code to VPS (excluding state files and downloads)..."
    rsync -av --progress \
        --exclude 'downloads/' \
        --exclude '.git/' \
        --exclude 'node_modules/' \
        --exclude 'puppeteer_session/' \
        --exclude 'uploaded_videos.json' \
        --exclude 'direct_videos.json' \
        --exclude '*.log' \
        ./ $VPS_HOST:$VPS_PATH

    # Upload state files explicitly
    echo ""
    echo "Uploading direct_videos.json (fresh tokens)..."
    scp direct_videos.json $VPS_HOST:$VPS_PATH

    echo "Uploading uploaded_videos.json (cleaned, base-URL keys)..."
    scp uploaded_videos.json $VPS_HOST:$VPS_PATH

    # Install deps if needed
    echo ""
    echo "Checking dependencies on VPS..."
    ssh $VPS_HOST "cd $VPS_PATH && npm install --production 2>&1 | tail -3"

    # Kill existing process and start fresh
    echo ""
    echo "Starting download process on VPS..."
    ssh $VPS_HOST << 'EOF'
cd ~/toveedo_scrapper
tmux kill-session -t toveedo-download 2>/dev/null || true
tmux new-session -d -s toveedo-download -c ~/toveedo_scrapper
tmux send-keys -t toveedo-download 'node download_optimized.js 2>&1 | tee -a upload.log' C-m
echo "Download started in tmux session 'toveedo-download'"
EOF

    echo ""
    echo "=== Deployment complete ==="
    echo "Monitor with: ssh $VPS_HOST 'tail -20 $VPS_PATH/upload.log'"
    echo "Attach with:  ssh $VPS_HOST -t 'tmux attach -t toveedo-download'"
}

check_status() {
    echo "=== VPS Status ==="
    ssh $VPS_HOST << 'EOF'
cd ~/toveedo_scrapper

# Check tmux session
if tmux has-session -t toveedo-download 2>/dev/null; then
    echo "Process: RUNNING in tmux"
else
    echo "Process: NOT RUNNING"
fi

# Count progress
if [ -f uploaded_videos.json ]; then
    TOTAL=$(node -e "const d=require('./direct_videos.json'); console.log(d.length)")
    UPLOADED=$(node -e "const u=require('./uploaded_videos.json'); const ok=Object.values(u).filter(v=>v.status!=='failed').length; console.log(ok)")
    FAILED=$(node -e "const u=require('./uploaded_videos.json'); const f=Object.values(u).filter(v=>v.status==='failed').length; console.log(f)")
    echo "Total videos: $TOTAL"
    echo "Uploaded: $UPLOADED"
    echo "Failed: $FAILED"
    echo "Remaining: $((TOTAL - UPLOADED - FAILED))"
fi

# Last log lines
echo ""
echo "Last 10 log lines:"
tail -10 upload.log 2>/dev/null || echo "(no log file)"
EOF
}

sync_progress() {
    echo "=== Syncing VPS progress to local ==="
    scp $VPS_HOST:$VPS_PATH/uploaded_videos.json ./uploaded_videos.json
    echo "Downloaded uploaded_videos.json from VPS"
    node -e "
const u = require('./uploaded_videos.json');
const ok = Object.values(u).filter(v => v.status !== 'failed').length;
const failed = Object.values(u).filter(v => v.status === 'failed').length;
console.log('Uploaded:', ok);
console.log('Failed:', failed);
console.log('Total entries:', Object.keys(u).length);
"
}

case "$STEP" in
    "refresh")
        refresh_tokens
        ;;
    "deploy")
        deploy_to_vps
        ;;
    "status")
        check_status
        ;;
    "sync")
        sync_progress
        ;;
    "full")
        refresh_tokens
        echo ""
        deploy_to_vps
        ;;
    *)
        echo "Usage: $0 [refresh|deploy|status|sync|full]"
        echo ""
        echo "  refresh  - Refresh expired JWT tokens locally (40 parallel tabs)"
        echo "  deploy   - Deploy code + data to VPS and start download"
        echo "  status   - Check VPS download progress"
        echo "  sync     - Download VPS progress to local machine"
        echo "  full     - Run refresh + deploy (default)"
        ;;
esac
