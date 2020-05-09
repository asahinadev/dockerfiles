# DOCKER CONFIG
FROM asahinadev/oraclejdk:9

# ダウンロードパス
ENV TOMCAT_URL http://archive.apache.org/dist/tomcat/tomcat-8/v8.5.54/bin/apache-tomcat-8.5.54.tar.gz

# 環境変数設定
ENV TOMCAT_HOME="/usr/local/tomcat/current"

# wget インストール
RUN dnf -y install wget

# tomcat インストール
WORKDIR /usr/local/tomcat
RUN wget -q $TOMCAT_URL 
RUN tar -xzf *.tar.gz
RUN rm -f *.tar.gz
RUN ln -snf * current

# 開放するポートを設定
EXPOSE 8080
EXPOSE 8005
EXPOSE 8009

ENTRYPOINT [ "/usr/local/tomcat/current/bin/catalina.sh" , "run" ]