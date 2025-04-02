#!/bin/bash

# Get absolute path to git_pull.sh
SCRIPT_PATH=$(realpath ./git_pull.sh)

# Create a cron job line that runs every 30 minutes
CRON_LINE="*/30 * * * * $SCRIPT_PATH"

# Install the cron job
( crontab -l 2>/dev/null; echo "$CRON_LINE" ) | crontab -

echo "✅ Installed cron job:"
echo "$CRON_LINE"

