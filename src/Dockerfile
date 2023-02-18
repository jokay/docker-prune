# https://hub.docker.com/_/docker
FROM docker.io/docker:23.0.1@sha256:3cf33ff6e893a39262bd9f6b85ff46e068fa2a98d201326e9c3058a22a21a6bb

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
