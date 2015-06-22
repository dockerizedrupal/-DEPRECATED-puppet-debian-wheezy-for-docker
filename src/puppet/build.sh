#!/usr/bin/env bash

apt-get update

DEBIAN_FRONTEND=noninteractive apt-get install -y lsb-release openssl ca-certificates wget

PACKAGE=puppetlabs-release-$(lsb_release -sc).deb

wget "https://apt.puppetlabs.com/${PACKAGE}" -O "/tmp/${PACKAGE}"

dpkg -i "/tmp/${PACKAGE}"

apt-get update

DEBIAN_FRONTEND=noninteractive apt-get install -y puppet

# https://tickets.puppetlabs.com/browse/PUP-2566
sed -i '/templatedir=\$confdir\/templates/d' /etc/puppet/puppet.conf

puppet module install puppetlabs/stdlib

puppet apply --modulepath=/src/puppet/build/modules /src/puppet/build/build.pp
