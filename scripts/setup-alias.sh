#!/usr/bin/env bash
set -euo pipefail

# setup-alias.sh — configure a shell alias for anthropic-skill
#
# This script adds a simple alias so you can run `anthropic-skill` from this repo

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SCRIPT_PATH="${SCRIPT_DIR}/anthropic-skill"

# Fish shell config
CONFIG_DIR="${HOME}/.config/fish"
CONFIG_FILE="${CONFIG_DIR}/config.fish"
mkdir -p "${CONFIG_DIR}"

# Check if alias already exists
if grep -q "alias anthropic-skill=" "${CONFIG_FILE}" 2>/dev/null; then
  echo "Alias already exists in ${CONFIG_FILE}"
  echo ""
  echo "To update it, remove the existing line and run this script again."
  exit 0
fi

# Add simple alias
echo "" >> "${CONFIG_FILE}"
echo "# Alias for agent-configs anthropic-skill installer" >> "${CONFIG_FILE}"
echo "alias anthropic-skill='${SCRIPT_PATH}'" >> "${CONFIG_FILE}"

echo "✓ Added alias to ${CONFIG_FILE}"
echo ""
echo "Run 'source ${CONFIG_FILE}' or restart your terminal to use the alias."
echo "Then you can use: anthropic-skill list"
