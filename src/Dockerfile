# https://hub.docker.com/_/docker
FROM docker.io/docker:24.0.2@sha256:5edfe3067bdd8b76818b036d8ef61846696af4d458ba527356c5484fcd692c2a

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
