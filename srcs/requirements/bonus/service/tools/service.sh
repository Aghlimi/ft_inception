#!/bin/bash
# 
mkdir -p /backup
while true; do
    sleep 1296000
    mysqldump -h ${WORDPRESS_DB_HOST} -u ${WORDPRESS_DB_USER} -p${WORDPRESS_DB_PASSWORD} ${WORDPRESS_DB_NAME} > /backup/wordpress_$(date +%Y%m%d).sql || true
    sleep 1296000
done