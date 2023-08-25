#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

#=================================================
# PERSONAL HELPERS
#=================================================

ntfy_setup_source() {
    ynh_setup_source -d "$install_dir" -s "$YNH_ARCH"
    mkdir -p "$install_dir/data"
    chown -R $app:$app "$install_dir"
    chmod -R 750 "$install_dir/data"

    ynh_secure_remove "$install_dir/client"
    ynh_secure_remove "$install_dir/server"
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
