# https://hub.docker.com/_/docker
FROM docker.io/docker:23.0.6@sha256:064b3ab5253f812c4fa076b74910435df0c8c7c3e7321330592f2ee50c894619

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
