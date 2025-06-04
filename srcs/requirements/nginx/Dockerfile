FROM debian:trixie-backports

RUN apt update

RUN apt install nginx openssl -y

RUN mkdir -p /etc/nginx/ssl

COPY tools/nginx.sh /nginx.sh

RUN chmod +x /nginx.sh

COPY conf/nginx.conf /etc/nginx/

CMD ["/nginx.sh"]