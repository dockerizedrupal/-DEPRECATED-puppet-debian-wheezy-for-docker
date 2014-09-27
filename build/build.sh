#!/usr/bin/env bash

apt-get update

apt-get install -y lsb-release
apt-get install -y openssl
apt-get install -y ca-certificates
apt-get install -y wget

PACKAGE=puppetlabs-release-$(lsb_release -sc).deb

wget "https://apt.puppetlabs.com/${PACKAGE}" -O "/tmp/${PACKAGE}"

dpkg -i "/tmp/${PACKAGE}"

apt-get update

apt-get install -y puppet

# https://tickets.puppetlabs.com/browse/PUP-2566
sed -i '/templatedir=\$confdir\/templates/d' /etc/puppet/puppet.conf

cp /tmp/build/etc/puppet/hiera.yaml /etc/puppet/hiera.yaml

puppet module install puppetlabs/stdlib

puppet apply /tmp/build/etc/puppet/manifests/build.pp
