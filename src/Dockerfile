# kics-scan disable=fd54f200-402c-4333-a5a4-36ef6709af2f,b03a748a-542d-44f4-bb86-9199ab4fd2d5

# https://hub.docker.com/_/docker
FROM docker.io/docker:29.1.4-cli@sha256:06a1ee7af01fecf797268686773f20d1410a8ef4da497144bd08001011b1fffa

ENV INTERVAL=86400
ENV OBJECTS="container volume image"
ENV OPTIONS=""

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
