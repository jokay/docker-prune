# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.18-alpine3.16@sha256:fd6932977dc8674c76b7f8a37a944458a7c0e8057c5b456a6b516fe78f3390bb

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
