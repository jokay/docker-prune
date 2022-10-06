# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.18-alpine3.16@sha256:b2343859b009730168704bf04dd705291539db39df5ccf840a91b647b72009fe

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
