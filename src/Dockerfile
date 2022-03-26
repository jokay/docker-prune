# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.14-alpine3.15@sha256:6d51c80ff60c5af6672cd56b99a19bee907503fbb5602e2d89d82c529029afef

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
