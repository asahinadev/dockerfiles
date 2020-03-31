From centos:7

EXPOSE 80

# YUM リポジトリ設定
RUN yum -y install epel-release
RUN yum -y install http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
RUN yum -y install yum-utils
RUN yum-config-manager --enable remi-php74

# yum install 
RUN yum -y install \
 httpd \
 httpd-devel \
 php \
 php-devel \
 php-intl \
 php-mbstring \
 php-mysqlnd \
 php-xml \
 php-redis \
 php-pecl-zip \
 php-pecl-mongodb 

ADD entrypoint.sh /usr/sbin/entrypoint.sh

ENTRYPOINT [ "/usr/sbin/entrypoint.sh" ]