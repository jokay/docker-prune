# https://hub.docker.com/_/docker
FROM docker.io/docker:24.0.2@sha256:f8b5e548ce35f1e177aaebae6e738315a7e9a75098d76dfae60238e0ce3a788b

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
