# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.22@sha256:75026b00c823579421c1850c00def301a6126b3f3f684594e51114c997f76467

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
