#!/bin/bash
set -e

REPO_URL="https://github.com/y4n9squared/dotfiles"
REPO_DIR="$HOME/Projects/dotfiles"

if ! command -v stow &>/dev/null; then
  echo "Install stow first"
  exit 1
fi

if [ -d "$REPO_DIR/.git" ]; then
  echo "Repository '$REPO_DIR' already exists. Skipping clone"
else
  git clone "$REPO_URL" "$REPO_DIR"
fi

stow -d "$REPO_DIR" -t "$HOME" \
  dprint \
  ghostty \
  git \
  helix \
  hunk \
  starship \
  zsh
