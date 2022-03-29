# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.14-alpine3.15@sha256:cfb8c563f5d6784917b224b7fe61c0495234a69d982faead3a2ca22a6a999739

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
