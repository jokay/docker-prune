# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.14-alpine3.15@sha256:7dad83861f0b28bd6a0b281dc5f72144927b9f8173e388e461c8feba6be20bec

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
