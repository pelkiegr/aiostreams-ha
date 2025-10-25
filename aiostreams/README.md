# AIOStreams Add-on for Home Assistant

Self-hosted AIOStreams for Stremio with Home Assistant Ingress support.

## Configuration

### Required Settings

- **secret_key**: MUST be a 64-character hex string
  - Generate with: `openssl rand -hex 32`
  - Or online: https://generate-random.org/hexadecimal-number-generator

### Optional Settings

- **addon_password**: Protect your instance with a password
- **base_url**: Your public URL (needed for some features)
- **tmdb_access_token**: For title matching features

## Installation

1. Add this repository to your Home Assistant:
   - Go to **Supervisor** → **Add-on Store** → **⋮** (three dots) → **Repositories**
   - Add: `https://github.com/pelkiegr/aiostreams-ha`
2. Find **AIOStreams** in the add-on store
3. Click **Install**
4. Generate a SECRET_KEY and add it to the configuration
5. Click **Start**

## Usage

Access AIOStreams through the Home Assistant sidebar or via ingress.

For more information about AIOStreams, visit: https://github.com/Viren070/AIOStreams
