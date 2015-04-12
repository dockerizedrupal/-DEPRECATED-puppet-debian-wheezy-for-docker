class puppet::packages {
  package {[
      'locales'
    ]:
    ensure => present
  }
}
