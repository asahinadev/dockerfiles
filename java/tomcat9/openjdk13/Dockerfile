# DOCKER CONFIG
FROM asahinadev/openjdk:13

# ダウンロードパス
ENV TOMCAT_URL http://archive.apache.org/dist/tomcat/tomcat-9/v9.0.34/bin/apache-tomcat-9.0.34.tar.gz

# 環境変数設定
ENV TOMCAT_HOME="/usr/local/tomcat/current"

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