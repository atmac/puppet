class apache2::service {

  service { "${apache2::service}":
    name        => $apache2::service,
    ensure      => running,
    enable      => true,
    hasstatus   => true,
    hasrestart  => true,
    require     => [ User[$apache2::userName], File["${apache2::configDir}/${apache2::configFile}"] ],
    subscribe   => File["${apache2::configDir}/${apache2::configFile}"]
  }

}
