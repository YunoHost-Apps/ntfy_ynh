#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

#=================================================
# PERSONAL HELPERS
#=================================================
ntfy_setup_source {
    ynh_setup_source -d "$install_dir" -a "$YNH_ARCH"
    ynh_secure_remove --file=$install_dir/client
    ynh_secure_remove --file=$install_dir/server

    mkdir -p "$install_dir/data"
}

ntfy_fix_permissions {
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
