# https://hub.docker.com/_/docker
FROM docker.io/docker:24.0.4@sha256:ec0c2cf754e65f0a97af7e9fa17294eac0240df9082c5a234da81503858427e2

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
