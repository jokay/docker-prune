# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.13-alpine3.15@sha256:24ce434e9bf049bd60d4810708f3ac0ec56810ea47fc092aff5dde4c5317a4f1

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
