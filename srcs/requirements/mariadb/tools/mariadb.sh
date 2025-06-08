#!/bin/bash

mysqld_safe &
mariadb_pid=$!

while ! mysqladmin ping --silent; do
    sleep 1
done

mysql -u root <<EOF
CREATE DATABASE IF NOT EXISTS \`${WORDPRESS_DB_NAME}\`;
CREATE USER IF NOT EXISTS '${WORDPRESS_DB_USER}'@'%' IDENTIFIED BY '${WORDPRESS_DB_PASSWORD}';
GRANT ALL PRIVILEGES ON \`${WORDPRESS_DB_NAME}\`.* TO '${WORDPRESS_DB_USER}'@'%';
FLUSH PRIVILEGES;
EOF
kill -9 "$mariadb_pid"
wait "$mariadb_pid" 2>/dev/null

exec mysqld_safe