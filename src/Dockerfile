# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.15-alpine3.15@sha256:462f7ada37612b16adf56972b362b60c488861670b906a42e7a84319f2d1ff23

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
