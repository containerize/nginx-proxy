#!/usr/bin/env sh

if [ ! -n "$SERVER_PROXY_HOST" ] ; then
    echo "Environment variable SERVER_PROXY_HOST is not set, exiting."
    exit 1
fi

# set redirect path from optional ENV var
if [ ! -n "$SERVER_PROXY_PORT" ] ; then
    echo "Environment variable SERVER_PROXY_PORT is not set, default 80."
    SERVER_PROXY_PORT='80'
fi

sed -i "s|\${SERVER_REDIRECT}|${SERVER_PROXY_HOST}|" /etc/nginx/conf.d/default.conf
sed -i "s|\${SERVER_REDIRECT_PATH}|${SERVER_PROXY_PORT}|" /etc/nginx/conf.d/default.conf

nginx -g 'daemon off;'