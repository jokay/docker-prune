# https://hub.docker.com/_/docker
FROM docker.io/docker:24.0.2@sha256:f44bd33ee57baf0830d8c07a1abd7ce40301a446e819b86ad0d99735c049f6a5

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
