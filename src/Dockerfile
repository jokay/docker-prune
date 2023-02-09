# https://hub.docker.com/_/docker
FROM docker.io/docker:23.0.0@sha256:210f22afb3022a5fb994eeacd18d983c9760efd6f793ee2bf3a3467aef0c583a

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
