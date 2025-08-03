#!/bin/bash

# Quick installer for Claude Code Unified Agents
# Can be run directly with: curl -sSL [URL] | bash

set -e

REPO_URL="https://github.com/stretchcloud/claude-code-unified-agents"
TEMP_DIR="/tmp/claude-agents-install-$$"

echo "🚀 Claude Code Unified Agents Quick Installer"
echo "============================================="
echo ""

# Clone the repository
echo "📦 Downloading agents..."
git clone --quiet "$REPO_URL" "$TEMP_DIR" 2>/dev/null || {
    echo "❌ Failed to download agents. Please check your internet connection."
    exit 1
}

# Run the main installer
echo "🔧 Running installation..."
cd "$TEMP_DIR"
bash scripts/install.sh "$@"

# Cleanup
rm -rf "$TEMP_DIR"

echo ""
echo "✨ Quick installation complete!"