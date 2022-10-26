# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.21-alpine3.16@sha256:169a07d8488874fb19341c959f67da2acc366921e729abd50c91d3e74a15616f

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
