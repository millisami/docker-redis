# millisami/redis-base

This image only installs the redis-server.


# Running redis master(standalone)

    docker run -d -P --name=redis0 millisami/redis-standalone:2.8.4


# Running redis slave

    docker run -d -P --name=redis0_slave --link=redis0:redis_master millisami/redis-slave:2.8.4

To verify, do run `docker logs redis0_slave`
