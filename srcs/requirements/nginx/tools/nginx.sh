#!/bin/bash

rm -f /etc/nginx/site-available/default

openssl req -x509 -nodes \
    -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/nginx.key \
    -out /etc/nginx/ssl/nginx.crt \
    -subj "/C=${C}/ST=${ST}/L=${L}/O=${O}/CN=${WORDPRESS_DOMAIN}" 

nginx -g "daemon off;"