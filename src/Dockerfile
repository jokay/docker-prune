# kics-scan disable=fd54f200-402c-4333-a5a4-36ef6709af2f,b03a748a-542d-44f4-bb86-9199ab4fd2d5

# https://hub.docker.com/_/docker
FROM docker.io/docker:26.1.4@sha256:03bffdab04d53ee2d34d2950f5a1bed008b5183b309e57d41244768a070da940

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
