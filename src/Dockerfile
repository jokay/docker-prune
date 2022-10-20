# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.20-alpine3.16@sha256:b39aa91b8a31462d6e86da84762891f6d2ac5657d34d9bf86fd1d0bd7b60e0d8

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
