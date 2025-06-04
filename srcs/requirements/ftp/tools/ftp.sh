#!/bin/bash
# set -e
adduser $FTP_USER_HOME
passwd $FTP_USER_NAME <<EOF
$FTP_USER_PASSWORD
$FTP_USER_PASSWORD
EOF
mkdir -p /ftp/upload

chown $FTP_USER_NAME:$FTP_USER_NAME /ftp/upload
pkill vsftpd
vsftpd -obackground=NO /etc/vsftpd.conf