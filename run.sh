#!/usr/bin/env bash
set -o nounset
set -o errexit
set -o pipefail

# make sure it doesn't daemonize
echo "daemon off;" >> /etc/nginx/nginx.conf

# replace variables at runtime
sed -i "s/SERVER_NAME/${SERVER_NAME}/g" /etc/nginx/conf.d/proxy.conf
sed -i "s/PROTO/${PROTO}/g" /etc/nginx/conf.d/proxy.conf
sed -i "s/UPSTREAM_PORT/${UPSTREAM_PORT}/g" /etc/nginx/conf.d/proxy.conf
sed -i "s/UPSTREAM_ADDRESS/${UPSTREAM_ADDRESS}/g" /etc/nginx/conf.d/proxy.conf

# start the thing
/usr/sbin/nginx

