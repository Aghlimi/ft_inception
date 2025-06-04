#!/bin/bash
# set -e
# config mariadb-server to work in 0.0.0.0
# sed -i 's/^\(bind-address\s*=\s*\).*/\1 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf
# sed -i 's/^\(port\s*=\s*\).*/\1 3306/' /etc/mysql/mariadb.conf.d/50-server.cnf
# chown -R mysql:mysql /var/lib/mysql
#/var/lib/mysql
mysqld_safe &
mariadb_pid=$!
# wait for mariadb deamon
while ! mysqladmin ping --silent; do
    sleep 1
done
mysql -u root <<EOF
CREATE DATABASE IF NOT EXISTS ${WORDPRESS_DB_NAME};
CREATE USER IF NOT EXISTS '${WORDPRESS_DB_USER}'@'%' IDENTIFIED BY '${WORDPRESS_DB_PASSWORD}';
GRANT ALL PRIVILEGES ON ${WORDPRESS_DB_NAME}.* TO '${WORDPRESS_DB_USER}'@'%';
FLUSH PRIVILEGES;
EOF
# kill -9 $mariadb_pid
# wait $mariadb_pid
# mysqld_safe 
sleep infinity 
# this time it will run in foreground
# if any container have just a deamons process, it will exit
# so we need to run the main process in foreground
