FROM docker.io/docker:20.10.12-alpine3.14@sha256:7576c1354d56ada47f1e52b9f5b9f472cb4bc85e299432b5508b5661228d3104

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
