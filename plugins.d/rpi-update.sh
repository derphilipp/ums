#!/usr/bin/env bash
set -Eeuo pipefail

if which rpi-update >/dev/null 2>/dev/null; then
    echo "🥧 Update via rpi-update"
    sudo rpi-update
fi
