# https://hub.docker.com/_/docker
FROM docker.io/docker:24.0.2@sha256:415f69f316a52b057f5df23595c780f9d0cb50337772ee4114dbf7dc293f2627

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
