FROM debian:trixie-backports

RUN mkdir -p /var/lib/mysql

RUN apt update

RUN apt install -y mariadb-server

COPY tools/mariadb.sh /mariadb.sh

RUN chmod +x /mariadb.sh

CMD ["/mariadb.sh"]