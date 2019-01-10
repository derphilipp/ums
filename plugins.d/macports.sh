#!/usr/bin/env bash
set -Eeuo pipefail

if command -v port 2>/dev/null; then
  echo "🍏 Updating 'port' ..."
  sudo port update && \
  sudo port upgrade
fi
