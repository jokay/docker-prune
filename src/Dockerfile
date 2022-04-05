# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.14-alpine3.15@sha256:41978d1974f05f80e1aef23ac03040491a7e28bd4551d4b469b43e558341864e

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
