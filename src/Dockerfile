# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.18-alpine3.16@sha256:68a377d2bd432a2e5791144748e8179db55118cb7a9e77b06bbfdc2c1c46b235

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
