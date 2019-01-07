#!/usr/bin/env bash
set -Eeuo pipefail

if [[ -x "/DietPi/dietpi/dietpi-update" ]]; then
    echo "🥧 Update diet-pi"
    sudo /DietPi/dietpi/dietpi-update
fi
