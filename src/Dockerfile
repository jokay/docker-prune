# kics-scan disable=fd54f200-402c-4333-a5a4-36ef6709af2f,b03a748a-542d-44f4-bb86-9199ab4fd2d5

# https://hub.docker.com/_/docker
FROM docker.io/docker:25.0.3@sha256:f837abeefde97276de9505056743c602d6938d2b49b2066bee3ae3b359ec8b78

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
