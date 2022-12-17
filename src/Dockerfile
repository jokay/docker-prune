# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.22-alpine3.17@sha256:152d5e0d4421f0b77021ee58e6469fc25e474a1f6c50ef4d7e9f6b3d28c66149

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
