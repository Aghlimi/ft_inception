#!/bin/bash

sed -i 's|^listen = .*|listen = 0.0.0.0:9000|' /etc/php/8.4/fpm/pool.d/www.conf

# wp plugin install redis --activate --allow-root 

php-fpm8.4 -F