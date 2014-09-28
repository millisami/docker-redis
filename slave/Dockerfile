FROM millisami/redis-base:2.8.4
MAINTAINER millisami (millisami@gmail.com)

ADD start-slave.sh start-slave.sh

RUN chmod 755 start-slave.sh

USER redis

EXPOSE 6379

VOLUME ["/var/lib/redis", "/run/redis"]

ENTRYPOINT ["./start-slave.sh"]
