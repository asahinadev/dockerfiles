#!/bin/sh

SERVER_NAME=${SERVER_NAME:=localhost}
ALLOWOVERRIDE=${ALLOWOVERRIDE:=ALL}

cd /etc/httpd/conf
sed -i.org -e "s/^#ServerName .*$/ServerName $SERVER_NAME/g" httpd.conf
sed -i     -e "s/AllowOverride None/AllowOverride $ALLOWOVERRIDE/g" httpd.conf

diff -u httpd.conf.org httpd.conf

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php --install-dir=/usr/local/bin --filename=composer
php -r "unlink('composer-setup.php');"

cd /var/www/html

if test -f composer.json;then
    yes | composer install
else
    yes | composer create-project --prefer-dist cakephp/app:^3.8 .
fi

if test -f bin/cake;then

chmod +x bin/cake

if test -d config/Migrations;then
    bin/cake migrations migrate
fi

if test -d config/Seeds;then
    bin/cake migrations seed
fi

fi

mkdir /run/php-fpm
php-fpm -c /var/www
/usr/sbin/httpd -M
/usr/sbin/httpd -DFOREGROUND

