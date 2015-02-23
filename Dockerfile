FROM debian:wheezy

MAINTAINER Simple Drupal Cloud <support@simpledrupalcloud.com>

ENV TERM xterm
ENV DEBIAN_FRONTEND noninteractive

ADD ./src /src

RUN /src/puppet.sh build

CMD ["/src/puppet.sh", "run"]
