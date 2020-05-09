# DOCKER CONFIG
FROM asahinadev/openjdk:10

# ダウンロードパス
ENV TOMCAT_URL https://ftp.tsukuba.wide.ad.jp/software/apache/tomcat/tomcat-10/v10.0.0-M4/bin/apache-tomcat-10.0.0-M4.tar.gz

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