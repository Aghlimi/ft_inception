#!/bin/bash

rm -f /etc/nginx/site-available/default

openssl req -x509 -nodes \
    -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/nginx.key \
    -out /etc/nginx/ssl/nginx.crt \
    -subj "/C=MA/ST=Bengurir/L=Bengurir/O=1337/CN=${DOMAIN_NAME}"

nginx -g "daemon off;"