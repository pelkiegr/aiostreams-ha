#!/bin/bash
set -e

CONFIG_PATH=/data/options.json

# Read config from Home Assistant
export ADDON_NAME=$(jq -r '.addon_name // "AIOStreams"' $CONFIG_PATH)
export ADDON_ID=$(jq -r '.addon_id // "aiostreams.homeassistant.local"' $CONFIG_PATH)
export SECRET_KEY=$(jq -r '.secret_key // ""' $CONFIG_PATH)
export ADDON_PASSWORD=$(jq -r '.addon_password // ""' $CONFIG_PATH)
export DATABASE_URI=$(jq -r '.database_uri // "sqlite://./data/db.sqlite"' $CONFIG_PATH)
export BASE_URL=$(jq -r '.base_url // ""' $CONFIG_PATH)
export PORT=3000
export TMDB_ACCESS_TOKEN=$(jq -r '.tmdb_access_token // ""' $CONFIG_PATH)
export LOG_LEVEL=$(jq -r '.log_level // "info"' $CONFIG_PATH)

echo "[INFO] Starting AIOStreams..."
echo "[INFO] Addon: $ADDON_NAME ($ADDON_ID)"

# Start the application
cd /app
exec pnpm start
