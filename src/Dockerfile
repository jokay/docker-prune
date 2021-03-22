FROM docker.io/docker:latest

ENV INTERVAL 86400
ENV OBJECTS "container volume image"

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
