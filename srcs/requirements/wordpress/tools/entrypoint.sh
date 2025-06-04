#!/bin/bash

sed -i 's|^listen = .*|listen = 0.0.0.0:9000|' /etc/php/8.4/fpm/pool.d/www.conf

wp plugin install redis-cache --activate --allow-root --path=/var/www/html

wp redis enable --allow-root --path=/var/www/html

wp user create ${WORDPRESS_ADMIN_USER} ${WORDPRESS_ADMIN_EMAIL} --role=administrator --user_pass=${WORDPRESS_ADMIN_PASSWORD} --allow-root --path=/var/www/html

# wp config set WP_REDIS_HOST ${REDIS_HOST} --allow-root --path=/var/www/html
# wp config set WP_REDIS_PORT ${REDIS_PORT} --allow-root --path=/var/www/html
# wp config set WP_CACHE true --allow-root --path=/var/www/html
# wp config set WP_REDIS_MAXTTL ${REDIS_MAXTTL} --allow-root --path=/var/www/html

php-fpm8.4 -F