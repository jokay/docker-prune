# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.13-alpine3.15@sha256:9e13118c8f7b17349e2d350806082fdda135ebf2923376821f3eac23559b9141

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
