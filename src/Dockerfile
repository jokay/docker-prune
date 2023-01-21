# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.23@sha256:2655039c6abfc8a1d75978c5258fccd5c5cedf880b6cfc72077f076d0672c70a

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
