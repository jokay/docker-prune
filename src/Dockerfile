# https://hub.docker.com/_/docker
FROM docker.io/docker:23.0.3@sha256:a2e34bde4cb23eaef4f3d5016c78f4a7ee06b65f80d07c7ba69a1e262977a97a

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
