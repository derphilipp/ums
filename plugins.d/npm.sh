#!/usr/bin/env bash
if which npm 2>/dev/null; then
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
        echo "💊  Upgrade npm itself"
        sudo npm install npm@latest -g
        echo ""

        if ! type npm-check 2>/dev/null; then
            echo "💊  Install npm-check"
            sudo npm -g install npm-check@latest -g
        fi

        echo "💊  Run npm-check"
        sudo npm-check -u -g
    fi
fi
