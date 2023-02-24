#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

#=================================================
# PERSONAL HELPERS
#=================================================
ntfy_setup_source {
    # $YNH_ARCH=$1
    # $install_dir=$2

    ynh_setup_source -d "$install_dir" -a "$YNH_ARCH"
    ynh_secure_remove --file=$install_dir/client
    ynh_secure_remove --file=$install_dir/server

    mkdir -p "$install_dir/data"
}

ntfy_fix_permissions {
    # $app=$1
    # $install_dir=$2

    chmod o+w "$install_dir/data"
    chmod 400 "$install_dir/server.yml"
    chown $app:$app "$install_dir/server.yml"
    chmod +x "$install_dir/ntfy.sh"
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
