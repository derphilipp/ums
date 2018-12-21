#!/usr/bin/env bash
if [[ -x "/DietPi/dietpi/dietpi-update" ]]; then
    echo "🥧 Update diet-pi"
    sudo /DietPi/dietpi/dietpi-update
fi
