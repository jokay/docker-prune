# https://hub.docker.com/_/docker
FROM docker.io/docker:24.0.1@sha256:ff3b9bc6b87e85ce3a374eef7a8daeb3b23cfa6fa6024382e63041a940cc25b4

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
