#!/bin/sh

if [ ! -n "$SERVER_PROXY_HOST" ] ; then
    echo "Environment variable SERVER_PROXY_HOST is not set,  default proxy."
fi

# set redirect path from optional ENV var
if [ ! -n "$SERVER_PROXY_PORT" ] ; then
    echo "Environment variable SERVER_PROXY_PORT is not set, default 80."
fi

envsubst < /etc/nginx/conf.d/default.conf > /etc/nginx/conf.d/default.conf

nginx -g 'daemon off;'