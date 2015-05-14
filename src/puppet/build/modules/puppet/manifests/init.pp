class puppet {
  file { '/etc/apt/sources.list.d/debian.list':
    ensure => present,
    source => 'puppet:///modules/puppet/etc/apt/sources.list.d/debian.list',
    mode => 644
  }

  file { '/etc/puppet/hiera.yaml':
    ensure => present,
    source => 'puppet:///modules/puppet/etc/puppet/hiera.yaml'
  }

  file { '/etc/bash.bashrc':
    ensure => present,
    source => 'puppet:///modules/puppet/etc/bash.bashrc',
    mode => 644
  }
}
