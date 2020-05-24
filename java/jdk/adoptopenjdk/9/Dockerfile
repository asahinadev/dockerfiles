# DOCKER CONFIG
FROM centos:8

ENV JAVA_TAR  OpenJDK9U-jdk_x64_linux_hotspot_9.0.4_11.tar.gz
ENV JAVA_HOME /usr/java/default

WORKDIR /usr/java
COPY $JAVA_TAR        /usr/java/$JAVA_TAR
RUN tar xzf $JAVA_TAR
RUN rm -rf  $JAVA_TAR
RUN ln -snf * default

WORKDIR /usr/local/bin/
RUN find /usr/java/default/bin/ -type f -executable | xargs -n 1 ln -snf

WORKDIR /usr/java


ENTRYPOINT [ "/sbin/init" ]