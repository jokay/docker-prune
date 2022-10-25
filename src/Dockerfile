# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.20-alpine3.16@sha256:466edff9fbc8e1326259d04412f55684c2e0f79c574eb9782c252011a87d8046

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
