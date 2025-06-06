FROM debian:trixie-backports
RUN apt-get update && \
    apt-get install -y php php-mysqli wget && rm -rf /var/lib/apt/lists/* 
COPY tools/adminer.sh /
RUN chmod +x /adminer.sh
EXPOSE 8080
CMD [ "/adminer.sh" ]