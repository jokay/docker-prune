# https://hub.docker.com/_/docker
FROM docker.io/docker:23.0.1@sha256:44cd33fb5235eb32c853f17b6ae6dea3cc3fb9239b83f2e732c7de6f94829a72

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
