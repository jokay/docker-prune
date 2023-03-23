# https://hub.docker.com/_/docker
FROM docker.io/docker:23.0.1@sha256:313f03f8946a38f72c45f224efead3b8c6b3a222f83ac323bf7a83e6351044be

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
