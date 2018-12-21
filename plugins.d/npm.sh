#!/usr/bin/env bash
if which npm 2>/dev/null; then
    if [[ "$OSTYPE" == "darwin"* ]]; then
        echo "💊  Upgrade npm itself"
        npm install npm@latest -g
        echo ""

        echo "🔊  npm list global outdated"
        npm outdated -g --depth=0
        echo ""

        echo "📦  npm upgrade running ..."
        npm update -g
        echo ""

        if [[ $1 == "cleanup" ]]; then
            if printf '%s\n%s\n' "$(npm --version)" 5.0.0 | sort --version-sort --check=silent; then
                echo "🌬   Cleaning npm cache"
                npm cache clean
            fi
        fi

        echo "🔍   Verifying npm cache"
        npm cache verify

        echo "👨‍⚕️   Running npm health check"
        npm doctor
    else
        echo "💊  Upgrade npm itself"
        sudo npm install npm@latest -g
        echo ""

        echo "🔊  npm list global outdated"
        sudo npm outdated -g --depth=0
        echo ""

        echo "📦  npm upgrade running ..."
        sudo npm update -g
        echo ""

        if [[ $1 == "cleanup" ]]; then
            if printf '%s\n%s\n' "$(sudo npm --version)" 5.0.0 | sort --version-sort --check=silent; then
                echo "🌬   Cleaning npm cache"
                sudo npm cache clean
            fi
        fi

        echo "🔍   Verifying npm cache"
        sudo npm cache verify

        echo "👨‍⚕️   Running npm health check"
        sudo npm doctor
    fi
fi
