# https://hub.docker.com/_/docker
FROM docker.io/docker:20.10.23@sha256:919061b7f4ec6cce50f40a6a7ee93c1f902812fabaede2fb5108a4e1d1601ab6

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD docker ps > /dev/null; if [ 0 != $? ]; then exit 1; fi;
