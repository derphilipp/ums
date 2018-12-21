#!/usr/bin/env bash
if which rpi-update >/dev/null 2>/dev/null; then
    echo "🥧 Update via rpi-update"
    sudo rpi-update
fi
