# https://hub.docker.com/_/docker
FROM docker.io/docker:23.0.5@sha256:f23f0a4013f184f6af3a3892dd12eba74bdbc5988d2a54ae468a8a6a44078434

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
