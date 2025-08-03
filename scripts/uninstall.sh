#!/bin/bash

# Claude Code Unified Agents Uninstall Script

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Default values
UNINSTALL_TYPE="user"
KEEP_BACKUP=true

# Function to print colored output
print_color() {
    local color=$1
    local message=$2
    echo -e "${color}${message}${NC}"
}

# Function to show usage
show_usage() {
    cat << EOF
Usage: $0 [OPTIONS]

OPTIONS:
    -t, --type TYPE        Uninstall type: 'user' or 'project' (default: user)
    -f, --force           Don't ask for confirmation
    --no-backup           Don't create backup before uninstalling
    -h, --help            Show this help message

EXAMPLES:
    $0                    # Uninstall from user directory
    $0 --type project     # Uninstall from current project
    $0 --force           # Uninstall without confirmation
EOF
}

# Parse command line arguments
FORCE=false
while [[ $# -gt 0 ]]; do
    case $1 in
        -t|--type)
            UNINSTALL_TYPE="$2"
            shift 2
            ;;
        -f|--force)
            FORCE=true
            shift
            ;;
        --no-backup)
            KEEP_BACKUP=false
            shift
            ;;
        -h|--help)
            show_usage
            exit 0
            ;;
        *)
            print_color "$RED" "Unknown option: $1"
            show_usage
            exit 1
            ;;
    esac
done

# Set target directory based on uninstall type
if [ "$UNINSTALL_TYPE" = "user" ]; then
    TARGET_DIR="$HOME/.claude/agents"
else
    TARGET_DIR=".claude/agents"
fi

# Check if agents are installed
if [ ! -d "$TARGET_DIR" ]; then
    print_color "$YELLOW" "No agents found in $TARGET_DIR"
    exit 0
fi

# Count installed agents
agent_count=$(find "$TARGET_DIR" -name "*.md" -type f 2>/dev/null | wc -l)

print_color "$BLUE" "════════════════════════════════════════════════════════"
print_color "$BLUE" "    Claude Code Unified Agents Uninstaller"
print_color "$BLUE" "════════════════════════════════════════════════════════"
echo ""
print_color "$YELLOW" "Found $agent_count agents in: $TARGET_DIR"
echo ""

# Ask for confirmation if not forced
if [ "$FORCE" = false ]; then
    read -p "Are you sure you want to uninstall? (y/N): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        print_color "$GREEN" "Uninstall cancelled."
        exit 0
    fi
fi

# Create backup if requested
if [ "$KEEP_BACKUP" = true ]; then
    BACKUP_DIR="${TARGET_DIR}_backup_$(date +%Y%m%d_%H%M%S)"
    print_color "$YELLOW" "Creating backup at: $BACKUP_DIR"
    cp -r "$TARGET_DIR" "$BACKUP_DIR"
fi

# Remove agents directory
print_color "$YELLOW" "Removing agents..."
rm -rf "$TARGET_DIR"

# Remove config file if exists
CONFIG_FILE="$(dirname "$TARGET_DIR")/agents.config"
if [ -f "$CONFIG_FILE" ]; then
    rm -f "$CONFIG_FILE"
    print_color "$GREEN" "✓ Removed configuration file"
fi

echo ""
print_color "$GREEN" "✓ Successfully uninstalled $agent_count agents!"

if [ "$KEEP_BACKUP" = true ]; then
    echo ""
    print_color "$YELLOW" "Backup saved at: $BACKUP_DIR"
    print_color "$YELLOW" "To restore: mv \"$BACKUP_DIR\" \"$TARGET_DIR\""
fi

echo ""
print_color "$BLUE" "════════════════════════════════════════════════════════"