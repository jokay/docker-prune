# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.22@sha256:57721058dcb11dcbafac38c862933a117ab7d5fa598bbe6217f6a3131d30b5e9

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
