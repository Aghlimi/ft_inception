FROM debian:trixie-backports

RUN apt-get update

RUN apt-get install -y redis-server

EXPOSE 6379

CMD ["redis-server", "--protected-mode", "no"]