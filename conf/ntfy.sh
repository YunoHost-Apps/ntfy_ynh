#!/bin/sh

sudo -u __APP__ NTFY_CONFIG_FILE="__FINALPATH__/server.yml" __FINALPATH__/ntfy $@
