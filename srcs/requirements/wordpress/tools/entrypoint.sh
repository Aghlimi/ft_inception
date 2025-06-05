#!/bin/bash

sed -i 's|^listen = .*|listen = 0.0.0.0:9000|' /etc/php/8.4/fpm/pool.d/www.conf

mkdir -p /var/www/html

wp core download --allow-root --path=/var/www/html

cp /wp-config.php /var/www/html/wp-config.php

wp plugin install redis-cache --activate --allow-root --path=/var/www/html

wp redis enable --allow-root --path=/var/www/html

wp redis enable --allow-root --path="/var/www/html"
wp config set DB_NAME ${WORDPRESS_DB_NAME} --allow-root --path=/var/www/html
wp config set DB_USER ${WORDPRESS_DB_USER} --allow-root --path=/var/www/html
wp config set DB_PASSWORD ${WORDPRESS_DB_PASSWORD} --allow-root --path=/var/www/html
wp config set DB_HOST ${WORDPRESS_DB_HOST} --allow-root --path=/var/www/html

wp config set WP_REDIS_HOST ${REDIS_HOST} --allow-root --path=/var/www/html
wp config set WP_REDIS_PORT ${REDIS_PORT} --allow-root --path=/var/www/html
wp config set WP_CACHE true --allow-root --path=/var/www/html
wp config set WP_REDIS_MAXTTL ${REDIS_MAXTTL} --allow-root --path=/var/www/html

wp user create ${WORDPRESS_ADMIN_USER} ${WORDPRESS_ADMIN_EMAIL} --role=administrator --user_pass=${WORDPRESS_ADMIN_PASSWORD} --allow-root --path=/var/www/html
php-fpm8.4 -F