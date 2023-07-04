# https://hub.docker.com/_/docker
FROM docker.io/docker:24.0.2@sha256:1d148deae16a6bb4c89224c636e1fd1799a4d5925f545861ce0d7bea3a527b5d

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
