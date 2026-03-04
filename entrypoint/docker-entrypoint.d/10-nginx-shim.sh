#!/bin/sh

set -e

ME=$(basename "$0")

entrypoint_log() {
    if [ -z "${ANGIE_ENTRYPOINT_QUIET_LOGS:-}" ]; then
        echo "$@"
    fi
}

if [ -d "/etc/nginx" ]; then
    entrypoint_log "$ME: Detected /etc/nginx directory, copying to /etc/angie/"
    cp -a /etc/nginx/. /etc/angie/
fi

if [ -f "/etc/angie/nginx.conf" ]; then
    mv /etc/angie/angie.conf /etc/angie/angie.conf.original
    ln -s /etc/angie/nginx.conf /etc/angie/angie.conf
    entrypoint_log "$ME: Detected /etc/angie/nginx.conf, symlinked to /etc/angie/angie.conf"
fi
