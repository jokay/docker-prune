# https://hub.docker.com/_/docker
FROM docker.io/docker:24.0.4@sha256:594b3a4dc012e5160fed2a5c47a36ac5af6fa25f0c155bd9cff23d4f8c6fec16

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
