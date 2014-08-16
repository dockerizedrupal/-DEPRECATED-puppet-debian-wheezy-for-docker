#!/usr/bin/env bash

apt-get update
apt-get -y install lsb-release openssl ca-certificates wget

which /usr/bin/lsb_release

PACKAGE=puppetlabs-release-$(lsb_release -sc).deb

wget https://apt.puppetlabs.com/$PACKAGE -O /tmp/$PACKAGE

dpkg -i /tmp/$PACKAGE

apt-get update
apt-get -y install puppet

rm /tmp/$PACKAGE