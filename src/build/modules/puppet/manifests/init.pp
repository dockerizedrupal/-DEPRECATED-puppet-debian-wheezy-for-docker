class puppet {
  require puppet::packages

  file { '/etc/puppet/hiera.yaml':
    ensure => present,
    source => 'puppet:///modules/puppet/etc/puppet/hiera.yaml'
  }
}
