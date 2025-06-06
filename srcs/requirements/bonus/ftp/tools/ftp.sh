#!/bin/bash

useradd -m $FTP_USER_NAME -d $FTP_USER_HOME

passwd $FTP_USER_NAME <<EOF
$FTP_USER_PASS
$FTP_USER_PASS
EOF
chown -R $FTP_USER_NAME:$FTP_USER_NAME $FTP_USER_HOME
vsftpd -obackground=NO /etc/vsftpd.conf