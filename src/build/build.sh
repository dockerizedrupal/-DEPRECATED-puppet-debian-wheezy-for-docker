#!/bin/sh

apt-get update
apt-get -y install wget

PACKAGE=puppetlabs-release-$(lsb_release -sc).deb

wget https://apt.puppetlabs.com/$PACKAGE -O /tmp/$PACKAGE

dpkg -i /tmp/$PACKAGE

apt-get update

rm /tmp/$PACKAGE