# DOCKER CONFIG
FROM centos:7

EXPOSE 8080
EXPOSE 8005
EXPOSE 8009

ENV OPENJDK=java-11-openjdk
ENV OPENJDK_DEV=java-11-openjdk-devel
ENV TOMCAT_URL=http://archive.apache.org/dist/tomcat/tomcat-8/v8.5.53/bin/apache-tomcat-8.5.53.tar.gz
ENV TOMCAT_TAR=apache-tomcat-8.5.53.tar.gz
ENV TOMCAT_DIR=apache-tomcat-8.5.53

# yum install 
RUN yum -y install \
 ${OPENJDK} \
 ${OPENJDK_DEV}

WORKDIR /usr/local/src/tomcat
RUN curl $TOMCAT_URL -o $TOMCAT_TAR
RUN tar -xzf $TOMCAT_TAR
RUN cp -pr $TOMCAT_DIR /usr/local/tomcat

WORKDIR /usr/local/tomcat
ADD entrypoint.sh /usr/local/tomcat/bin/entrypoint.sh
RUN chmod +x bin/*.sh

CMD [ "/usr/local/tomcat/bin/entrypoint.sh" ]