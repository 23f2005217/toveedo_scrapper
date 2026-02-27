#!/bin/bash

# VPS monitoring script
# Usage: ./monitor_vps.sh [action]

VPS_HOST="root@143.110.192.199"

case "${1:-status}" in
    "status"|"")
        echo "VPS Download Status:"
        ssh $VPS_HOST 'tail -10 ~/toveedo_scrapper/upload.log'
        echo ""
        echo "Memory Usage:"
        ssh $VPS_HOST 'free -h'
        ;;
    
    "logs")
        echo "Live logs (Ctrl+C to exit):"
        ssh $VPS_HOST 'tail -f ~/toveedo_scrapper/upload.log'
        ;;
    
    "attach")
        echo "Attaching to tmux session..."
        ssh -t $VPS_HOST 'tmux attach -t toveedo-download'
        ;;
    
    "restart")
        echo "Restarting download process..."
        ssh $VPS_HOST << 'EOF'
cd ~/toveedo_scrapper
tmux kill-session -t toveedo-download 2>/dev/null || true
tmux new-session -d -s toveedo-download -c ~/toveedo_scrapper
tmux send-keys -t toveedo-download 'echo "Restarted at $(date)"' C-m
tmux send-keys -t toveedo-download 'node download_optimized.js 2>&1 | tee -a upload.log' C-m
EOF
        echo "Download process restarted"
        ;;
    
    "stop")
        echo "Stopping download process..."
        ssh $VPS_HOST 'tmux kill-session -t toveedo-download 2>/dev/null || true'
        echo "Download process stopped"
        ;;
    
    "progress")
        echo "Upload Progress:"
        ssh $VPS_HOST 'cd ~/toveedo_scrapper && if [ -f uploaded_videos.json ]; then echo "Uploaded: $(jq ". | length" uploaded_videos.json) videos"; else echo "No progress file found"; fi'
        ;;
    
    *)
        echo "Usage: $0 [action]"
        echo "Actions:"
        echo "  status    - Show recent logs and memory usage (default)"
        echo "  logs      - Show live logs"
        echo "  attach    - Attach to tmux session"
        echo "  restart   - Restart download process"
        echo "  stop      - Stop download process"
        echo "  progress  - Show upload progress"
        ;;
esac