# DOCKER CONFIG
FROM asahinadev/oraclejdk:11

# ダウンロードパス
ENV FESS_URL https://github.com/codelibs/fess/releases/download/fess-13.6.3/fess-13.6.3.zip

# 環境変数設定
ENV FESS_HOME="/usr/local/fess/current"

ENV LC_CTYPE "ja_JP.UTF-8"

# wget インストール
RUN dnf -y install wget unzip zip

# archiva インストール
WORKDIR /usr/local/fess
RUN wget -q $FESS_URL
RUN unzip   *.zip
RUN rm -f   *.zip
RUN ln -snf * current

EXPOSE 8080

ENTRYPOINT [ "/usr/local/fess/current/bin/fess" ]
