# https://hub.docker.com/_/docker
FROM docker.io/docker:24.0.3@sha256:8c39dc84d3a2cf61545c50689140f0cb29a672b8bccac1a5ebce12b402c9b32f

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
