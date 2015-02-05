FROM ubuntu
MAINTAINER sebastian.noack@fh-kiel.de

VOLUME ["/var/lib/redis"]
VOLUME ["/run/redis"]

CMD echo "redis data container (providing var/lib/redis and /run/redis)"
