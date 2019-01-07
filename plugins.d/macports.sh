#!/usr/bin/env bash
set -Eeuo pipefail

if which port 2>/dev/null; then
  echo "🍏 Updating 'port' ..."
  sudo port update && \
  sudo port upgrade
fi
