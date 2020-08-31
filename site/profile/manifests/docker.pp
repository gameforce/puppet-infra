class profile::docker {
  class { 'docker':
    use_upstream_package_source => false,
    version => '17.09.0~ce-0~debian',
}

  # ensure docker-compose is present
  class {'docker::compose':
    ensure  => present,
    version => '1.9.0',
  }
}
