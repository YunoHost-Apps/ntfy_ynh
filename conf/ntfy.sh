#!/bin/sh

HOME=__INSTALL_DIR__

NTFY_CONFIG_FILE="$HOME/server.yml" $HOME/ntfy $@
