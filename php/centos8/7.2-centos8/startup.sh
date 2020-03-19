#!/bin/sh

mkdir /run/php-fpm
php-fpm -c /var/www
/usr/sbin/httpd -DFOREGROUND

