#!/bin/sh

HOME=__INSTALL_DIR__

if [ ! -f "$HOME/data/user.db" ]; then
    echo "Waiting for server to start"
    sleep 2
fi

NTFY_CONFIG_FILE="$HOME/server.yml" $HOME/ntfy $@
