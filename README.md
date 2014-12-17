docker-norikra
==============

Dockerfile for Norikra

```
docker run -d -p 26578:26578 -p 26571:26571 -v /var/norikra:/var/norikra:rw -t nekoruri/norikra

docker run -d -p 26578:26578 -p 26571:26571 -v /var/norikra:/var/norikra:rw -t nekoruri/norikra \
  -v -Xloggc:/var/norikra/gc.log -verbose:gc -XX:+PrintGCDetails -XX:+PrintGCDateStamps
```

Inspired from:
- https://github.com/myfinder/docker-norikra
- https://github.com/matsuu/docker-norikra
- https://github.com/kazunori279/dockerfiles
