# https://hub.docker.com/_/docker
FROM docker.io/docker:23.0.4@sha256:e40881e5e9ab5361c288a1ab43b4120f6115be61fa21019b43adf0b27b1fbfb1

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
