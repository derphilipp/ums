#!/usr/bin/env bash
set -Eeuo pipefail

if command -v yarn 2>/dev/null; then
  echo "📦  Yet another Yarn upgrade running ..."
  yarn global upgrade -s
  echo "🌬   Cleaning yarn cache"
  yarn cache clean
fi
