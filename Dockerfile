FROM ubuntu
MAINTAINER sebastian.noack@fh-kiel.de

RUN groupadd -r redis \
    && useradd -r -g redis redis

RUN mkdir -p -m 0755 /var/lib/redis \
    && chown -R redis:redis /var/lib/redis 

RUN mkdir -p -m 0755 /run/redis \
    && chown -R redis:redis /run/redis

VOLUME ["/var/lib/redis"]
VOLUME ["/run/redis"]

CMD echo "redis data container (providing var/lib/redis and /run/redis)"
