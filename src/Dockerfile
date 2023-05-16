# https://hub.docker.com/_/docker
FROM docker.io/docker:23.0.6@sha256:2985399fb735fa4c3b6cfba8d1087f011dc4c6f5fde105c9c5a77be472b73836

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
