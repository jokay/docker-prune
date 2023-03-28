# https://hub.docker.com/_/docker
FROM docker.io/docker:23.0.1@sha256:d9a0fd8bdd156aae6e9be5db0264e0bc99e000e89e92055d4567e27ff13daff0

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
