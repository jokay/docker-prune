# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.22@sha256:9586963dcc07a22641bf03c22f43cd7e45b3107df6bf55c92d8c5098b0ac1750

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
