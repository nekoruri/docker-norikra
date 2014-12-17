FROM ubuntu:trusty

# inspired from myfinder/docker-norikra, matsuu/docker-norikra
# https://github.com/myfinder/docker-norikra
# https://github.com/matsuu/docker-norikra

MAINTAINER NAKAYAMA Masahiro <aki@nekoruri.jp>

ENV DEBIAN_FRONTEND noninteractive

ENV PATH /jruby-1.7.17/bin:$PATH

# build norikra and clean
RUN apt-get update && apt-get -y install build-essential curl git openjdk-7-jre-headless && curl -L http://jruby.org.s3.amazonaws.com/downloads/1.7.17/jruby-bin-1.7.17.tar.gz | tar zxf - && gem install norikra --no-ri --no-rdoc && apt-get -y remove build-essential && apt-get -y autoremove && apt-get -y clean

ENTRYPOINT [ "/jruby-1.7.17/bin/norikra", "start", "--stats=/var/norikra/stats.json", "--dump-stat-interval=60" ]
CMD ["--small"]

EXPOSE 26571 26578
VOLUME ["/var/norikra"]

