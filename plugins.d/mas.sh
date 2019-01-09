#!/usr/bin/env bash
set -Eeuo pipefail

if hash mas 2>/dev/null; then
  echo "🍏  Mac App Store updates come fast as lightning"
  # only ask about `mas upgrade` if `mas outdated` returns something
  if [ -n "$(mas outdated)" ]; then
    mas upgrade
  fi
  echo ""
fi
