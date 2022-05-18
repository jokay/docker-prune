# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.16-alpine3.15@sha256:c24538b2a7a081efc81185772bd8066d33cbf1f3e1a8249657395bdad4d5f844

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
