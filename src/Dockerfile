# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.23@sha256:2245cd9cd5bc068987a1d3fd9eede6faf8231b396bba968234fffbeb01b09648

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
