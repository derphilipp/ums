#!/usr/bin/env bash

if which fish >/dev/null 2>/dev/null; then
    if fish -c "type -q fisher" ; then
        echo "update fish"
        fish -c "fisher self-update"
        fish -c "fisher"
    fi
fi
