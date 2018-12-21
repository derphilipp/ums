#!/usr/bin/env bash
if which eopkg >/dev/null 2>/dev/null; then
    echo "update eopkg"
    sudo eopkg upgrade
fi
