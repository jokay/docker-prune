# https://hub.docker.com/_/docker
FROM docker.io/docker:24.0.4@sha256:1a3af94b15016bbe80ef221dfec5639c13a0ce1e08aaec40fffea1d1250aade0

ENV INTERVAL 86400
ENV OBJECTS "container volume image"
ENV OPTIONS ""

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
