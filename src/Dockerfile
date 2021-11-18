FROM docker.io/docker:20.10.11-alpine3.14@sha256:ff4fcc30e7c20f33c021e82683aedd1fe66654363eb1ff61065e0628f5bbf107

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
