FROM millisami/redis-base:2.8.4
MAINTAINER millisami (millisami@gmail.com)

USER redis

EXPOSE 6379

VOLUME ["/var/lib/redis", "/run/redis"]

ENTRYPOINT ["/usr/bin/redis-server", "/etc/redis/redis.conf"]
