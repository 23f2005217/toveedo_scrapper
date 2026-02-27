#!/bin/bash

# Start or restart the download process
# Usage: ./start.sh

SESSION="toveedo"
WORKDIR=~/toveedo_scrapper
LOGFILE=$WORKDIR/upload.log

# Kill any stale chrome/puppeteer processes
pkill -f chromium 2>/dev/null
pkill -f chrome 2>/dev/null
sleep 1

# Remove stale puppeteer lock files
rm -f $WORKDIR/puppeteer_session/SingletonLock \
      $WORKDIR/puppeteer_session/SingletonCookie \
      $WORKDIR/puppeteer_session/SingletonSocket 2>/dev/null

# Kill existing session if running
tmux kill-session -t $SESSION 2>/dev/null
sleep 1

# Start fresh tmux session and run node inside it
tmux new-session -d -s $SESSION -x 220 -y 50 "cd $WORKDIR && node download_optimized.js 2>&1 | tee -a $LOGFILE"

echo "Started in tmux session: $SESSION"
echo ""
echo "Monitor commands:"
echo "  Live logs:    ssh root@143.110.192.199 'tail -f ~/toveedo_scrapper/upload.log'"
echo "  Attach:       ssh -t root@143.110.192.199 'tmux attach -t $SESSION'  (Ctrl+B D to detach)"
echo "  Progress:     ssh root@143.110.192.199 'node -e \"const u=require(\\\"./toveedo_scrapper/uploaded_videos.json\\\"); const ok=Object.keys(u).filter(k=>u[k].status!==\\\"failed\\\").length; const fail=Object.keys(u).filter(k=>u[k].status===\\\"failed\\\").length; console.log(\\\"Uploaded:\\\", ok, \\\"Failed:\\\", fail, \\\"Remaining:\\\", 916-ok-fail);\"'"
echo "  Stop:         ssh root@143.110.192.199 'tmux kill-session -t $SESSION'"
