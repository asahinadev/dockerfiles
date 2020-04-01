#!/bin/sh

SERVER_NAME=${SERVER_NAME:=localhost}
ALLOWOVERRIDE=${ALLOWOVERRIDE:=ALL}
DocumentRoot=${DocumentRoot:=/var/www/html/public}

cd /etc/httpd/conf
sed -i.org -e "s/^#ServerName .*$/ServerName $SERVER_NAME/g" httpd.conf
sed -i     -e "s/AllowOverride None/AllowOverride $ALLOWOVERRIDE/g" httpd.conf
sed -i     -e "s|^DocumentRoot .*$|DocumentRoot $DocumentRoot|g" httpd.conf

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php --install-dir=/usr/local/bin --filename=composer
php -r "unlink('composer-setup.php');"

cd /var/www/html

if test -f composer.lock;then
    yes | composer update
elif  test -f composer.json;then
    yes | composer install
else
    yes | composer create-project --prefer-dist laravel/laravel .
fi

find . -type d | xargs chmod 777 -v

mkdir /run/php-fpm
php-fpm -c /var/www
/usr/sbin/httpd -DFOREGROUND

