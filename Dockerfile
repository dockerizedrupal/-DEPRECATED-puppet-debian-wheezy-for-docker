FROM debian:wheezy

MAINTAINER Simple Drupal Cloud <support@simpledrupalcloud.com>

ENV TERM xterm
ENV DEBIAN_FRONTEND noninteractive
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

ADD ./src /src

RUN /src/entrypoint.sh build

CMD ["/src/entrypoint.sh", "run"]
