#!/bin/bash

mkdir -p /backup

while true; do
    sleep 60 # 10 minutes
    mysqldump -h ${WORDPRESS_DB_HOST} -u ${WORDPRESS_DB_USER} -p${WORDPRESS_DB_PASSWORD} ${WORDPRESS_DB_NAME} > /backup/wordpress_$(date +%Y%m%d).sql || true

    # sleep day  - 10 minutes
    sleep 86340 # 24 * 60 * 60 - 60 = 86340 seconds

done