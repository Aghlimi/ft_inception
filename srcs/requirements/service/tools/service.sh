#!/bin/bash
# set -e
mkdir -p /backup
while true; do
    mysqldump -h ${WORDPRESS_DB_HOST} -u ${WORDPRESS_DB_USER} -p${WORDPRESS_DB_PASSWORD} ${WORDPRESS_DB_NAME} > /backup/wordpress_$(date +%Y%m%d).sql || true
    sleep 2592000
done