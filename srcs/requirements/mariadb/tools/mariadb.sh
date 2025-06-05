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
kill "$mariadb_pid"
wait "$mariadb_pid" 2>/dev/null

exec mysqld_safe --datadir=/var/lib/mysql --bind-address=0.0.0.0x
# flags for mysqld_safe:
# --datadir=/var/lib/mysql: specifies the data directory for MariaDB.
# --skip-networking=0: allows networking, enabling remote connections.
# --bind-address=0.0.0.0: allows connections from any IP address.