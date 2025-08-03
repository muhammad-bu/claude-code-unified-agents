#!/bin/bash

# Claude Code Unified Agents Installation Script
# This script installs Claude Code sub-agents to your system

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Default values
INSTALL_TYPE="user"
AGENTS_TO_INSTALL="all"
BACKUP_EXISTING=true

# Script directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
REPO_DIR="$(dirname "$SCRIPT_DIR")"
AGENTS_SOURCE_DIR="$REPO_DIR/claude-code-unified-agents/.claude/agents"

# Function to print colored output
print_color() {
    local color=$1
    local message=$2
    echo -e "${color}${message}${NC}"
}

# Function to print header
print_header() {
    echo ""
    print_color "$BLUE" "════════════════════════════════════════════════════════"
    print_color "$BLUE" "    Claude Code Unified Agents Installer"
    print_color "$BLUE" "════════════════════════════════════════════════════════"
    echo ""
}

# Function to show usage
show_usage() {
    cat << EOF
Usage: $0 [OPTIONS]

OPTIONS:
    -t, --type TYPE         Installation type: 'user' or 'project' (default: user)
    -a, --agents AGENTS     Comma-separated list of agents to install (default: all)
    -n, --no-backup        Don't backup existing agents
    -l, --list             List all available agents
    -h, --help             Show this help message

EXAMPLES:
    $0                     # Install all agents globally
    $0 --type project      # Install all agents to current project
    $0 --agents backend-architect,frontend-specialist
    $0 --list              # Show all available agents
EOF
}

# Function to list all agents
list_agents() {
    print_header
    print_color "$GREEN" "Available Agents:"
    echo ""
    
    for category_dir in "$AGENTS_SOURCE_DIR"/*/; do
        if [ -d "$category_dir" ]; then
            category=$(basename "$category_dir")
            category_display=$(echo "$category" | awk '{print toupper(substr($0,1,1)) tolower(substr($0,2))}')
            print_color "$YELLOW" "📁 $category_display:"
            
            for agent_file in "$category_dir"*.md; do
                if [ -f "$agent_file" ]; then
                    agent_name=$(basename "$agent_file" .md)
                    description=$(grep "^description:" "$agent_file" | cut -d':' -f2- | xargs)
                    echo "    • $agent_name - $description"
                fi
            done
            echo ""
        fi
    done
    
    # Also check for orchestrator.md in the root of agents directory
    if [ -f "$AGENTS_SOURCE_DIR/orchestrator.md" ]; then
        print_color "$YELLOW" "📁 Core:"
        description=$(grep "^description:" "$AGENTS_SOURCE_DIR/orchestrator.md" | cut -d':' -f2- | xargs)
        echo "    • orchestrator - $description"
        echo ""
    fi
}

# Parse command line arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        -t|--type)
            INSTALL_TYPE="$2"
            shift 2
            ;;
        -a|--agents)
            AGENTS_TO_INSTALL="$2"
            shift 2
            ;;
        -n|--no-backup)
            BACKUP_EXISTING=false
            shift
            ;;
        -l|--list)
            list_agents
            exit 0
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

# Validate installation type
if [[ "$INSTALL_TYPE" != "user" && "$INSTALL_TYPE" != "project" ]]; then
    print_color "$RED" "Error: Invalid installation type. Use 'user' or 'project'"
    exit 1
fi

# Set target directory based on installation type
if [ "$INSTALL_TYPE" = "user" ]; then
    TARGET_DIR="$HOME/.claude/agents"
    print_color "$GREEN" "Installing to user directory: $TARGET_DIR"
else
    TARGET_DIR=".claude/agents"
    print_color "$GREEN" "Installing to project directory: $TARGET_DIR"
fi

# Create target directory if it doesn't exist
mkdir -p "$TARGET_DIR"

# Backup existing agents if requested
if [ "$BACKUP_EXISTING" = true ] && [ -d "$TARGET_DIR" ] && [ "$(ls -A "$TARGET_DIR")" ]; then
    BACKUP_DIR="${TARGET_DIR}_backup_$(date +%Y%m%d_%H%M%S)"
    print_color "$YELLOW" "Backing up existing agents to: $BACKUP_DIR"
    cp -r "$TARGET_DIR" "$BACKUP_DIR"
fi

# Function to install a single agent
install_agent() {
    local agent_name=$1
    local found=false
    
    # Check for orchestrator first
    if [ "$agent_name" = "orchestrator" ] && [ -f "$AGENTS_SOURCE_DIR/orchestrator.md" ]; then
        cp "$AGENTS_SOURCE_DIR/orchestrator.md" "$TARGET_DIR/"
        print_color "$GREEN" "  ✓ Installed orchestrator"
        return
    fi
    
    # Check in category directories
    for category_dir in "$AGENTS_SOURCE_DIR"/*/; do
        agent_file="$category_dir$agent_name.md"
        if [ -f "$agent_file" ]; then
            category=$(basename "$category_dir")
            target_category_dir="$TARGET_DIR/$category"
            mkdir -p "$target_category_dir"
            
            cp "$agent_file" "$target_category_dir/"
            print_color "$GREEN" "  ✓ Installed $agent_name to $category/"
            found=true
            break
        fi
    done
    
    if [ "$found" = false ]; then
        print_color "$YELLOW" "  ⚠ Agent not found: $agent_name"
    fi
}

# Install agents
print_header

if [ "$AGENTS_TO_INSTALL" = "all" ]; then
    print_color "$BLUE" "Installing all agents..."
    echo ""
    
    # Copy entire agents directory structure
    cp -r "$AGENTS_SOURCE_DIR"/* "$TARGET_DIR/"
    
    # Count installed agents
    agent_count=$(find "$TARGET_DIR" -name "*.md" -type f | wc -l)
    print_color "$GREEN" "✓ Successfully installed $agent_count agents!"
else
    print_color "$BLUE" "Installing selected agents..."
    echo ""
    
    # Install specific agents
    IFS=',' read -ra AGENTS <<< "$AGENTS_TO_INSTALL"
    for agent in "${AGENTS[@]}"; do
        agent=$(echo "$agent" | xargs) # Trim whitespace
        install_agent "$agent"
    done
fi

# Create configuration file
CONFIG_FILE="$TARGET_DIR/../agents.config"
cat > "$CONFIG_FILE" << EOF
# Claude Code Unified Agents Configuration
# Generated on $(date)

version: 1.0
install_type: $INSTALL_TYPE
install_date: $(date -Iseconds)
agents_installed: $AGENTS_TO_INSTALL
EOF

print_color "$GREEN" "Configuration saved to: $CONFIG_FILE"

# Final message
echo ""
print_color "$BLUE" "════════════════════════════════════════════════════════"
print_color "$GREEN" "Installation complete! 🎉"
echo ""
print_color "$YELLOW" "Next steps:"
echo "1. Open Claude Code"
echo "2. Use /agents to browse available agents"
echo "3. Or directly invoke agents with @agent-name"
echo ""
print_color "$BLUE" "Example: @backend-architect Design a REST API"
print_color "$BLUE" "════════════════════════════════════════════════════════"