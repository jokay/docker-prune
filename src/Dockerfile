# https://hub.docker.com/_/docker
FROM docker.io/docker:24.0.1@sha256:99f37b72d498f19dcb9473b3e6dc58b7009bff129fb96bfa096e1b3b080b3df5

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
