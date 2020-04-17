From asahinadev/php:7.3-centos8

EXPOSE 80

WORKDIR /var/www
ADD startup.sh /var/www/startup.sh

WORKDIR /var/www/html

CMD [ "/var/www/startup.sh" ]