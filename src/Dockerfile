# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.17-alpine3.16@sha256:0c4066e2407fb67b5cb609aa2ea380cdd774445e6be1cd651096167963125af5

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
