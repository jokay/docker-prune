# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.17-alpine3.16@sha256:7ca2205ea1eb9621045461f3e4b2aa4fc65c1ffe91960b1ab62d2afa9905e032

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
