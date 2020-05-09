# DOCKER CONFIG
FROM asahinadev/oraclejdk:8

# ダウンロードパス
ENV ARCHIVA_URL http://archive.apache.org/dist/archiva/2.2.4/binaries/apache-archiva-2.2.4-bin.tar.gz

# 環境変数設定
ENV ARCHIVA_HOME="/usr/local/archiva/current"

# wget インストール
RUN dnf -y install wget

# archiva インストール
WORKDIR /usr/local/archiva
RUN wget -q $ARCHIVA_URL
RUN tar -xzf *.tar.gz
RUN rm -f *.tar.gz
RUN ln -snf * current

ENTRYPOINT [ "/usr/local/archiva/current/bin/archiva" , "console" ]
