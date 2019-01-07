#!/usr/bin/env bash
set -Eeuo pipefail

if which composer 2>/dev/null; then
  echo "🎼  Composer"
  composer global update
  echo ""

  if [[ $1 == "cleanup" ]]; then
    echo "🌬   Cleaning concert hall"
    composer clearcache
  fi
fi
