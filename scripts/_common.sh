#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

#=================================================
# PERSONAL HELPERS
#=================================================
ntfy_setup_source() {
    ynh_setup_source -d "$install_dir" -s "$YNH_ARCH"
    ynh_secure_remove "$install_dir/client"
    ynh_secure_remove "$install_dir/server"
    mkdir -p "$install_dir/data"
}

ntfy_fix_permissions() {
    chmod -R 750 "$install_dir"
    chmod +x "$install_dir/ntfy.sh"
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
