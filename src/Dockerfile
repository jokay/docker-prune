# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.13-alpine3.15@sha256:9597f07edf69996194651e432f87fef5920236d5fd75afadc0273b6e7c0d9bb8

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
