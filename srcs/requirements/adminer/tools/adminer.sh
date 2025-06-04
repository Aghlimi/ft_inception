#!/bin/bash
mkdir -p /adminer
wget https://www.adminer.org/latest.php -O /adminer/index.php 
chmod 644 /adminer/index.php
php -S 0.0.0.0:8080 -t /adminer
