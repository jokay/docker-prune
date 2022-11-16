# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.21-alpine3.16@sha256:4ae1444ef191366429581854edcf0a16f260b7a0ed90f4d5d1d95265356642ae

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
