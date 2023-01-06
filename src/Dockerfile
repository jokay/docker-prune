# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.22@sha256:fde7a4a9b1ca994f7c5bfd62fb32c70fddbbfea43a1ea74b029d7a88c6f0e243

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
