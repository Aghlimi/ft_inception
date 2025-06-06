FROM debian:trixie-backports
RUN apt-get update && apt-get install -y \
    git \
    mariadb-client
COPY tools/service.sh /service.sh
RUN chmod +x /service.sh

CMD ["/service.sh"]