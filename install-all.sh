#!/bin/bash
set -e

cd "$(dirname "$0")"

. ./install-homebrew.sh
. ./install-packages.sh
. ./install-ruff.sh
. ./install-dotfiles.sh
