FROM debian:trixie-backports

RUN apt-get update

RUN apt-get install -y mariadb-client

COPY tools/service.sh /service.sh

RUN chmod +x /service.sh

CMD ["/service.sh"]