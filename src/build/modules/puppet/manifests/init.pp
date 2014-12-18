class puppet {
  file { '/etc/puppet/hiera.yaml':
    ensure => present,
    source => 'puppet:///modules/puppet/etc/puppet/hiera.yaml'
  }

  exec { 'mkdir -p /etc/puppet/parser/functions':
    path => ['/bin']
  }

  file { '/etc/puppet/parser/functions/file_exists.rb':
    ensure => present,
    source => 'puppet:///modules/puppet/etc/puppet/parser/functions/file_exists.rb',
    require => Exec['mkdir -p /etc/puppet/parser/functions']
  }
}
