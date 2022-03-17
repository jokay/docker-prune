# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.13-alpine3.15@sha256:72e87d4f1d2ed054bf9ec48c77dfc546c7e6173fe9b6afd9e80716b9c5ade4bb

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
