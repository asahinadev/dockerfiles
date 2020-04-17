#!/bin/sh

SERVER_NAME=${SERVER_NAME:=localhost}
ALLOWOVERRIDE=${ALLOWOVERRIDE:=ALL}

cd /etc/httpd/conf
sed -i.org -e "s/^#ServerName .*$/ServerName $SERVER_NAME/g" httpd.conf
sed -i     -e "s/AllowOverride None/AllowOverride $ALLOWOVERRIDE/g" httpd.conf

diff -u httpd.conf.org httpd.conf

mkdir /run/php-fpm
php-fpm -c /var/www
/usr/sbin/httpd -M
/usr/sbin/httpd -DFOREGROUND

