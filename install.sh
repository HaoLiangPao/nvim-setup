#!/bin/bash

set -e

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

# Print colored message
print_message() {
  echo -e "${2}${1}${NC}"
}

# Check if a command exists
command_exists() {
  command -v "$1" >/dev/null 2>&1
}

# Install Neovim if not already installed
install_neovim() {
  if ! command_exists nvim; then
    print_message "Neovim not found. Installing..." "$YELLOW"
    
    if command_exists apt-get; then
      sudo apt-get update
      sudo apt-get install -y neovim
    elif command_exists dnf; then
      sudo dnf install -y neovim
    elif command_exists yum; then
      sudo yum install -y neovim
    elif command_exists brew; then
      brew install neovim
    else
      print_message "Could not install Neovim automatically. Please install it manually." "$RED"
      exit 1
    fi
    
    print_message "Neovim installed successfully!" "$GREEN"
  else
    print_message "Neovim is already installed." "$GREEN"
  fi
}

# Backup existing Neovim configuration
backup_config() {
  local config_dir="$HOME/.config/nvim"
  local backup_dir="$HOME/.config/nvim.bak.$(date +%Y%m%d%H%M%S)"
  
  if [ -d "$config_dir" ]; then
    print_message "Backing up existing Neovim configuration to $backup_dir" "$YELLOW"
    mv "$config_dir" "$backup_dir"
    print_message "Backup completed." "$GREEN"
  fi
}

# Install LazyVim
install_lazyvim() {
  print_message "Installing LazyVim..." "$BLUE"
  
  # Create config directory
  mkdir -p "$HOME/.config/nvim"
  
  # Clone this repository to get custom configurations
  local repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
  
  # Copy custom configurations
  print_message "Copying custom configurations..." "$BLUE"
  cp -r "$repo_dir/nvim/"* "$HOME/.config/nvim/"
  
  print_message "LazyVim with custom configurations installed successfully!" "$GREEN"
  print_message "Start Neovim with 'nvim' to complete the setup and install plugins." "$GREEN"
}

# Main installation process
main() {
  print_message "Starting Neovim setup with LazyVim..." "$BLUE"
  
  install_neovim
  backup_config
  install_lazyvim
  
  print_message "Setup completed successfully!" "$GREEN"
}

# Run the installation
main