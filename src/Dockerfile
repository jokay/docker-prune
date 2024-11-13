# kics-scan disable=fd54f200-402c-4333-a5a4-36ef6709af2f,b03a748a-542d-44f4-bb86-9199ab4fd2d5

# https://hub.docker.com/_/docker
FROM docker.io/docker:27.3.1@sha256:09bf5e6944db2b59ab9c953d14c0af292459b169f5a2c15169450c072f9bf1d9

ENV INTERVAL=86400
ENV OBJECTS="container volume image"
ENV OPTIONS=""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
