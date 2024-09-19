#!/bin/sh

HOME=__INSTALL_DIR__

AUTH_FILE="$HOME/data/user.db"

if [ ! -f $AUTH_FILE ]; then
    echo "Waiting for server to start"
    t=0
    until [ -e $AUTH_FILE ] || (( t++ >= 20 )); do
      sleep 1
    done
fi

NTFY_CONFIG_FILE="$HOME/server.yml" $HOME/ntfy $@
