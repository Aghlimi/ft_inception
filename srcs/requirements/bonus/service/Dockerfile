FROM debian:trixie-backports

RUN apt-get update

RUN apt-get install -y mariadb-client 

RUN apt-get install -y cron

COPY tools/service.sh /service.sh

RUN chmod +x /service.sh

CMD ["/service.sh"]