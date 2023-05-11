# https://hub.docker.com/_/docker
FROM docker.io/docker:23.0.6@sha256:ed09448da6f2d4bd1ac208a923a2a962cc203dabb60111acd33111728214e93a

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
