# DOCKER CONFIG
FROM centos:8

# ダウンロードパス
ENV JDK_URL    https://download.java.net/java/GA/jdk14.0.1/664493ef4a6946b186ff29eb326336a2/7/GPL/openjdk-14.0.1_linux-x64_bin.tar.gz

# 環境変数設定
ENV JAVA_HOME="/usr/local/java/current"

# wget インストール
RUN yum -y install wget

# java インストール
WORKDIR /usr/local/java
RUN wget -q $JDK_URL
RUN tar -xzf *.tar.gz
RUN rm -f *.tar.gz
RUN ln -snf * current

ENTRYPOINT [ "/sbin/init" ]