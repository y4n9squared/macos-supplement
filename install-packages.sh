#!/bin/bash
set -e

brew bundle --no-upgrade --file="$(dirname "$0")/Brewfile"
