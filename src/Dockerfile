# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.16-alpine3.15@sha256:5d189fc5e5f970db40c8656f1f5dcf25bbbf0861598fda4953ea9ca49059e5cc

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
