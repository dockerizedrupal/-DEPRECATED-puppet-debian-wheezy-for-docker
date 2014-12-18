class puppet {
  file { '/etc/puppet/hiera.yaml':
    ensure => present,
    source => 'puppet:///modules/puppet/etc/puppet/hiera.yaml'
  }

  file { '/etc/puppet/parser/functions/file_exists.rb':
    ensure => present,
    source => 'puppet:///modules/puppet/parser/functions/file_exists.rb'
  }
}
