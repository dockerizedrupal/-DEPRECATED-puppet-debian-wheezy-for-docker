#!/usr/bin/env bash

apt-get update

apt-get install -y lsb-release
apt-get install -y openssl
apt-get install -y ca-certificates
apt-get install -y wget

PACKAGE=puppetlabs-release-$(lsb_release -sc).deb

wget https://apt.puppetlabs.com/$PACKAGE -O /tmp/$PACKAGE

dpkg -i /tmp/$PACKAGE

apt-get update

apt-get install -y puppet

# https://tickets.puppetlabs.com/browse/PUP-2566
sed -i '/templatedir=\$confdir\/templates/d' /etc/puppet/puppet.conf

# http://projects.puppetlabs.com/projects/puppet/wiki/Environment_Variables_Patterns
mkdir -p /etc/puppet/modules/customfacts/lib/facter
cp /tmp/build/etc/puppet/modules/customfacts/lib/facter/env.rb /etc/puppet/modules/customfacts/lib/facter/env.rb

cp /tmp/build/etc/puppet/hiera.yaml /etc/puppet/hiera.yaml