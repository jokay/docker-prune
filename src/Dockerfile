# https://hub.docker.com/_/docker
FROM docker.io/docker:23.0.6@sha256:d9a1c228debaf2dc84e07a0aad72a9b8dd1645442d05ece950507e0a8838fcb1

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
