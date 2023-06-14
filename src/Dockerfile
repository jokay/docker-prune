# https://hub.docker.com/_/docker
FROM docker.io/docker:24.0.2@sha256:0ecf72e876d2c7e56dd6d97c58d732f2dce8fbcb5905a031d957c5da1375fe45

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
