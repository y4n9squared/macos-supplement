#!/bin/bash
set -e

if ! command -v uv &>/dev/null; then
  echo "Install uv first"
  exit 1
fi

uv tool install ruff@latest
