FROM debian:trixie-backports

RUN apt update 

RUN apt install php php8.4-fpm php-mysqli wget curl -y

RUN wget https://wordpress.org/latest.tar.gz

RUN tar -xzf latest.tar.gz

RUN mkdir -p /var/www/html

RUN mv wordpress/* /var/www/html

RUN rm -rf wordpress latest.tar.gz

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

COPY tools/entrypoint.sh /entrypoint.sh

COPY conf/wp-config.php /var/www/html/wp-config.php

RUN chmod +x /entrypoint.sh

EXPOSE 9000

CMD ["/entrypoint.sh"]