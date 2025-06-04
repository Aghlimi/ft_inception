FROM debian:trixie-slim

RUN apt-get update && \
    apt-get install -y python3 python3-pip gcc libmariadb-dev pkg-config

RUN pip3 install --break-system-packages --no-cache-dir --upgrade pip
RUN pip3 install --break-system-packages --no-cache-dir django==5.2.1
RUN pip3 install --break-system-packages --no-cache-dir mariadb
RUN pip3 install --break-system-packages --no-cache-dir mysqlclient

COPY tools/inception /inception
COPY conf/website.sh /website.sh
RUN chmod +x /website.sh
EXPOSE 8000
ENTRYPOINT ["/website.sh"]
