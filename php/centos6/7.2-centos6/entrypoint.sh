#!/bin/sh

SERVER_NAME=${SERVER_NAME:=localhost}
ALLOWOVERRIDE=${ALLOWOVERRIDE:=ALL}

cd /etc/httpd/conf
sed -i.org -e "276 s/^.*$/ServerName $SERVER_NAME/g" httpd.conf
sed -i     -e "338 s/AllowOverride .*/AllowOverride $ALLOWOVERRIDE/g" httpd.conf

/usr/sbin/httpd -DFOREGROUND