FROM ubuntu
MAINTAINER sebastian.noack@fh-kiel.de

RUN groupadd -r redis \
    && useradd -r -g redis redis

RUN mkdir -p -m 0755 /var/lib/redis \
    && chown -R redis:redis /var/lib/redis 

VOLUME ["/var/lib/redis"]

CMD echo "redis data container (providing var/lib/redis)"
