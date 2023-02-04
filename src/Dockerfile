# https://hub.docker.com/_/docker
FROM docker.io/docker:23.0.0@sha256:e6055f8f3631220803c49658b5c1513a6db428afb0eda193ead270331642ae62

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
