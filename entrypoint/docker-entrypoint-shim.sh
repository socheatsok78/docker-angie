#!/bin/sh
# vim:sw=4:ts=4:et

set -e

ANGIE_ENTRYPOINT_QUIET_LOGS=${ANGIE_ENTRYPOINT_QUIET_LOGS:-${NGINX_ENTRYPOINT_QUIET_LOGS:-}}

entrypoint_log() {
    if [ -z "${ANGIE_ENTRYPOINT_QUIET_LOGS:-}" ]; then
        echo "$@"
    fi
}

# Create a shim for NGINX_ environment variables by prefixing them with ANGIE_
env | grep ^NGINX_ | while read -r line; do
    var_name=$(echo "$line" | cut -d= -f1)
    var_value=$(echo "$line" | cut -d= -f2-)
    new_var_name="ANGIE_${var_name#NGINX_}"
    entrypoint_log "$0: Setting \"$new_var_name\" using \"$var_name\" environment variable"
    export "$new_var_name=$var_value"
done

# Execute the original entrypoint script with the provided arguments
exec "/docker-entrypoint.sh" "$@"
