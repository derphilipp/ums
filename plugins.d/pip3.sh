#!/usr/bin/env bash
set -Eeuo pipefail

function repair_pip_rights {
    if [[ "$OSTYPE" == "darwin"* ]]; then
        echo "Shall I set user rights to current user to /usr/local ?"
        read -p "Are you sure? " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            sudo chown -R "$USER" /usr/local
        fi
    else
        echo "Fix your access rights please"
    fi
}

function install_pip_review {
    if python3 -m pip_review --version >/dev/null 2>/dev/null; then
        echo ""
    else
        python3 -m pip install pip-review
    fi
}

function install_pip_review_sudo {
    if python3 -m pip_review --version >/dev/null 2>/dev/null; then
        echo ""
    else
        sudo -H python3 -m pip install pip-review
    fi
}

function update {
    python3 -m pip_review --auto
}

function update_sudo {
    sudo -H python3 -m pip_review --auto
}


if command -v python3 >/dev/null 2>/dev/null; then
    echo "🐍 Update python3 packages"
    if [[ "$OSTYPE" == "darwin"* ]]; then
        install_pip_review
        if update; then
             echo ""
        else
            repair_pip_rights
            update
        fi
    else
        install_pip_review_sudo
        update_sudo
    fi
fi
