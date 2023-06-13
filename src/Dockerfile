# https://hub.docker.com/_/docker
FROM docker.io/docker:24.0.2@sha256:ccca3d366645e79444fd51b0d77fdc9a002706c46dc4bc7c6b22c7e04f26af54

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
