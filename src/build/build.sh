#!/usr/bin/env bash

apt-get update

apt-get -y install lsb-release
apt-get -y install openssl
apt-get -y install ca-certificates
apt-get -y install wget

PACKAGE=puppetlabs-release-$(lsb_release -sc).deb

wget https://apt.puppetlabs.com/$PACKAGE -O /tmp/$PACKAGE

dpkg -i /tmp/$PACKAGE

apt-get update

apt-get -y install puppet

# https://tickets.puppetlabs.com/browse/PUP-2566
sed -i '/templatedir=\$confdir\/templates/d' /etc/puppet/puppet.conf

mkdir -p /etc/puppet/modules/customfacts/lib/facter

cp /opt/build/etc/puppet/modules/customfacts/lib/facter/env.rb /etc/puppet/modules/customfacts/lib/facter/env.rb

rm /tmp/$PACKAGE