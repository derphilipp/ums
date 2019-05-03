#!/usr/bin/env bash
set -Eeuo pipefail

if command -v npm 2>/dev/null; then
    if [[ "$OSTYPE" == "darwin"* ]]; then
        echo "💊  Upgrade npm itself"
        npm install npm@latest -g
        echo ""

        if ! type npm-check 2>/dev/null; then
            echo "💊  Install npm-check"
            npm -g install npm-check@latest -g
        fi

        echo "💊  Run npm-check"
        npm-check -u -g
    else
        # if command -v raspi-config 2>/dev/null; then
        #     npm=/usr/bin/npm
        # else
            npm="$(which npm)"
        # fi

        echo "💊  Upgrade npm itself ($npm)"
        sudo -H "$npm" install npm@latest -g
        echo ""

        if ! type npm-check 2>/dev/null; then
            echo "💊  Install npm-check"
            sudo -H "$npm" -g install npm-check@latest -g
        fi

        echo "💊  Run npm-check"
        sudo -H npm-check -u -g
    fi
fi
