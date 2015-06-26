class build {
  file { '/etc/apt/sources.list':
    ensure => present,
    source => 'puppet:///modules/build/etc/apt/sources.list',
    mode => 644
  }

  file { '/etc/puppet/hiera.yaml':
    ensure => present,
    source => 'puppet:///modules/build/etc/puppet/hiera.yaml'
  }

  file { '/etc/bash.bashrc':
    ensure => present,
    source => 'puppet:///modules/build/etc/bash.bashrc',
    mode => 644
  }
}
