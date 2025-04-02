#!/bin/bash

# Log to a file in the same folder as this script
exec >> "$(dirname "$0")/cron_debug.log" 2>&1

echo "----- Running at $(date) -----"
export PATH=/usr/bin:/bin:/usr/local/bin

# Go to the directory of this script
cd "$(dirname "$0")" || {
  echo "❌ Failed to cd into script directory"
  exit 1
}

# Show remote and pull
echo "🔍 Git remote:"
git remote -v
git pull origin main || echo "❌ git pull failed"

echo "✅ Done at $(date)"
