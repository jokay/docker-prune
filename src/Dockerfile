# https://hub.docker.com/_/docker
FROM docker.io/docker:23.0.2@sha256:29f11c7c63c84a51c45901701c2d16336c9abc6365d3a69136884b3cf15e2cc9

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
