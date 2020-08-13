#!/usr/bin/env bash

envsubst '$PROXY_PROTOCOL,$PROXY_UPSTREAM' < /etc/nginx/sites-available/default.template > /etc/nginx/sites-available/default;
echo "Setup with load-balancer with default variables protocol" $PROXY_PROTOCOL $PROXY_UPSTREAM;
echo "The nginx conf file is as follow";
cat /etc/nginx/sites-available/default;
exec nginx -g 'daemon off;';
