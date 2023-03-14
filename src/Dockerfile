# https://hub.docker.com/_/docker
FROM docker.io/docker:23.0.1@sha256:3a09aaa775e328ec0817cb9b060e68c94ccf135f290c70f8189fbf2128ecdd9c

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
