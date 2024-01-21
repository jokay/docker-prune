# kics-scan disable=fd54f200-402c-4333-a5a4-36ef6709af2f,b03a748a-542d-44f4-bb86-9199ab4fd2d5

# https://hub.docker.com/_/docker
FROM docker.io/docker:25.0.0@sha256:3c5c38804aab5d3938ea3aa5be399276bbb3b8e04a5190183aa01be55641518c

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
