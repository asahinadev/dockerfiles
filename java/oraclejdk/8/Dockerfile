# DOCKER CONFIG
FROM centos:8

ENV JAVA_RPM  jdk-8u251-linux-x64.rpm
ENV JAVA_HOME /usr/java/default

WORKDIR /usr/local/src/java
COPY $JAVA_RPM /usr/local/src/java/$JAVA_RPM

RUN yum -y install $JAVA_RPM

ENTRYPOINT [ "/sbin/init" ]