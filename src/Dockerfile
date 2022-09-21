# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.18-alpine3.16@sha256:a7984be85b34c64a2073622b6287de0ad28799a82c1d7256174a486cc8a2ecbe

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
