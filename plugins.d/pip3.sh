#!/usr/bin/env bash


function repair_pip_rights {
    if [[ "$OSTYPE" == "darwin"* ]]; then
        echo "Shall I set user rights to current user to /usr/local ?"
        read -p "Are you sure? " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            sudo chown -R $USER /usr/local
        fi
    else
        echo "Please fix rights of pip files"
    fi
}


if which pip3 >/dev/null 2>/dev/null; then
    echo "Update pip3"
    if pip3 list --outdated --format=freeze --local --no-cache-dir | grep -v '^\-e' | grep -v "pygobject" | cut -d = -f 1  | xargs -n1 pip3 -q install -U --no-cache-dir; then
        echo ""
    else
        repair_pip_rights
        pip3 list --outdated --format=freeze --local --no-cache-dir | grep -v '^\-e' | grep -v "pygobject" |cut -d = -f 1  | xargs -n1 pip3 -q install -U --no-cache-dir
    fi
fi
