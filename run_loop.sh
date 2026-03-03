#!/bin/bash
# run_loop.sh — called by start.sh inside tmux.
# Runs node in a restart loop. Stops only on clean exit (code 0).

WORKDIR=~/toveedo_scrapper
LOGFILE=$WORKDIR/upload.log

cd $WORKDIR

while true; do
  node download_optimized.js 2>&1 | tee -a $LOGFILE
  EXIT=${PIPESTATUS[0]}

  if [ $EXIT -eq 0 ]; then
    echo "[RUN_LOOP] Node exited cleanly (code 0). All done." | tee -a $LOGFILE
    break
  fi

  echo "[RUN_LOOP] Node crashed (exit code $EXIT). Restarting in 5s..." | tee -a $LOGFILE
  pkill -f chromium 2>/dev/null
  pkill -f chrome 2>/dev/null
  rm -f $WORKDIR/puppeteer_session/SingletonLock \
        $WORKDIR/puppeteer_session/SingletonCookie \
        $WORKDIR/puppeteer_session/SingletonSocket 2>/dev/null
  sleep 5
done
