# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.17-alpine3.16@sha256:c43c56a83cd0b5b9472a955f1002955deaeaebe9dd62c0a37ea0622cf36a3d94

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
