class puppet {
  file { '/etc/apt/sources.list.d/contrib.list':
    ensure => present,
    source => 'puppet:///modules/puppet/etc/apt/sources.list.d/contrib.list',
    mode => 644
  }

  file { '/etc/puppet/hiera.yaml':
    ensure => present,
    source => 'puppet:///modules/puppet/etc/puppet/hiera.yaml'
  }
}
