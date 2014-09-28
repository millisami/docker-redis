FROM ubuntu:14.04
MAINTAINER millisami(millisami@gmail.com)

RUN apt-get update &&\
    apt-get install -y build-essential redis-server &&\
    rm -rf /var/lib/apt/lists/*

RUN sed 's/^daemonize yes/daemonize no/' -i /etc/redis/redis.conf \
 && sed 's/^bind 127.0.0.1/bind 0.0.0.0/' -i /etc/redis/redis.conf \
 && sed 's,^# unixsocket /tmp/redis.sock,unixsocket /run/redis/redis.sock,' -i /etc/redis/redis.conf \
 && sed 's/^# unixsocketperm 700/unixsocketperm 777/' -i /etc/redis/redis.conf \
 && sed '/^logfile/d' -i /etc/redis/redis.conf
