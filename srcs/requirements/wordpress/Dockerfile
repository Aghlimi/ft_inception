FROM debian:trixie-backports

RUN apt update 

RUN apt install php php8.4-fpm php-mysqli wget curl php-redis -y

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

COPY tools/entrypoint.sh /entrypoint.sh

COPY conf/wp-config.php /wp-config.php

RUN chmod +x /entrypoint.sh

EXPOSE 9000

CMD ["/entrypoint.sh"]