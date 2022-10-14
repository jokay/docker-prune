# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.19-alpine3.16@sha256:c46d545416789939b360195c8c870277c2c18481e130d16d1bde31bdf1cbe3c9

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
