# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.17-alpine3.16@sha256:386dd216988a21c83233d32b3926300909a111fa73266d035e992280aa3a9e42

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
