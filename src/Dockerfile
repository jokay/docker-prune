# kics-scan disable=fd54f200-402c-4333-a5a4-36ef6709af2f,b03a748a-542d-44f4-bb86-9199ab4fd2d5

# https://hub.docker.com/_/docker
FROM docker.io/docker:27.4.1@sha256:9788e053d0ed20669ddda70b62f3409ff85cc267cc28736f3968b4a89c21c871

ENV INTERVAL=86400
ENV OBJECTS="container volume image"
ENV OPTIONS=""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
