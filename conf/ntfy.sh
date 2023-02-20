#!/bin/sh

HOME=__FINALPATH__

NTFY_CONFIG_FILE="$HOME/server.yml" $HOME/ntfy $@
