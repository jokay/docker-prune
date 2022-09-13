# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.18-alpine3.16@sha256:c0ba96f6414f1bf92cc6c5afc25235f507b7fcc1ca0a8ba6884c81aacf434b78

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
