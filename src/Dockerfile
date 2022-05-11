# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.15-alpine3.15@sha256:d11ece2878a6f8efbced93964e6ae22aa21721bc0efd9ef2e7e28685859d49d9

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
