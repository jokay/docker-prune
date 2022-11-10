# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.21-alpine3.16@sha256:0b2c96ce1907a9df3505759cbc8a4af52bcb40e8a9dff18bb5809eb3a821414e

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
