# https://hub.docker.com/_/docker
FROM docker.io/docker:24.0.0@sha256:29a8ec20e19581efc0f209a1eaddb5ff021e497520f7ed973c282c264f23be78

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
