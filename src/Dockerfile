# kics-scan disable=fd54f200-402c-4333-a5a4-36ef6709af2f,b03a748a-542d-44f4-bb86-9199ab4fd2d5

# https://hub.docker.com/_/docker
FROM docker.io/docker:27.3.1@sha256:c73ddf37cbf2acada6c5689c615d8a7fc521a10cded71b10c87b79729641b0e9

ENV INTERVAL=86400
ENV OBJECTS="container volume image"
ENV OPTIONS=""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
