class ntp::service {

  service { "${ntp::service}":
    name        => $ntp::service,
    ensure      => running,
    enable      => true,
    hasstatus   => true,
    hasrestart  => true,
    require     => File["${ntp::configDir}/${ntp::configFile}"],
    subscribe   => File["${ntp::configDir}/${ntp::configFile}"],
  }

}
