#!/bin/sh

dpkg-divert --local --rename --add /sbin/initctl
ln -s /bin/true /sbin/initctl

apt-get update
apt-get -y install wget

PACKAGE=puppetlabs-release-$(lsb_release -sc).deb

wget https://apt.puppetlabs.com/$PACKAGE -O /tmp/$PACKAGE

dpkg -i /tmp/$PACKAGE

apt-get update
apt-get -y install puppet

rm /tmp/$PACKAGE