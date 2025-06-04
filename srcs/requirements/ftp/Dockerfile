FROM debian:trixie-slim

RUN apt-get update && apt-get install -y vsftpd && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
RUN mkdir -p /ftp/upload
RUN chmod a+w /ftp/upload
COPY conf/vsftpd.conf /etc/vsftpd.conf
COPY tools/ftp.sh /ftp.sh
RUN chmod +x /ftp.sh
EXPOSE 21

CMD ["/ftp.sh"]