# kics-scan disable=fd54f200-402c-4333-a5a4-36ef6709af2f,b03a748a-542d-44f4-bb86-9199ab4fd2d5

# https://hub.docker.com/_/docker
FROM docker.io/docker:27.4.1@sha256:fb8fcca8ee754637610e1a936135c895dcb9ef7ed6deff52cab37b26449ede0c

ENV INTERVAL=86400
ENV OBJECTS="container volume image"
ENV OPTIONS=""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
