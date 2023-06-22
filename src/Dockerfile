# https://hub.docker.com/_/docker
FROM docker.io/docker:24.0.2@sha256:28c6ddb5d7bfdc019fb39cc2797351a6e3e81458ad621808e5e9dd3e41538c77

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
