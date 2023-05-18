# https://hub.docker.com/_/docker
FROM docker.io/docker:24.0.0@sha256:6893622dae740d55e7879ff7a3d0a3f641e2bb639ea6bbc74bdabfa531db4785

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
