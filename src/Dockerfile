# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.17-alpine3.16@sha256:206fb7d9747e035b5fb0b12840d1117ccce38b7508c5967ddd66bfc1f8abc36a

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
