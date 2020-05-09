# DOCKER CONFIG
FROM asahinadev/oraclejdk:8

ENV NEXUS_TAR  nexus-3.23.0-03-unix.tar.gz

WORKDIR /usr/local/nexus
COPY        $NEXUS_TAR /usr/local/nexus/$NEXUS_TAR
RUN tar xzf $NEXUS_TAR
RUN rm -rf  $NEXUS_TAR
RUN ln -snf nexus-* current

RUN useradd nexus
RUN chown nexus.nexus . -R

EXPOSE 8081

USER nexus
ENTRYPOINT [ "/usr/local/nexus/current/bin/nexus", "run" ]
