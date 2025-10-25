#!/usr/bin/with-contenv bashio

# Read config from Home Assistant
export ADDON_NAME=$(bashio::config 'addon_name')
export ADDON_ID=$(bashio::config 'addon_id')
export SECRET_KEY=$(bashio::config 'secret_key')
export ADDON_PASSWORD=$(bashio::config 'addon_password')
export DATABASE_URI=$(bashio::config 'database_uri')
export BASE_URL=$(bashio::config 'base_url')
export PORT=3000
export TMDB_ACCESS_TOKEN=$(bashio::config 'tmdb_access_token')
export LOG_LEVEL=$(bashio::config 'log_level')

bashio::log.info "Starting AIOStreams..."

# Start the application
cd /app
exec pnpm start
