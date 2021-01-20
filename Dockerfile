FROM docker.io/docker:20.10.2

ENV INTERVAL 86400
ENV OBJECTS "container volume image"

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]