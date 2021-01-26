FROM docker.io/docker:20.10.2

ENV INTERVAL 86400
ENV OBJECTS "container volume image"

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]

HEALTHCHECK --interval=1m --timeout=3s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
