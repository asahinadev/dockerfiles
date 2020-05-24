# DOCKER CONFIG
FROM centos:8

# ダウンロードパス
ENV JDK_URL    https://download.java.net/java/early_access/jdk15/19/GPL/openjdk-15-ea+19_linux-x64_bin.tar.gz

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