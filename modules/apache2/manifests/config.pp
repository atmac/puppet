class apache2::config {

  
 file { "${apache2::configDir}":
    ensure  => directory,
    owner   => $apache2::userName,
    group   => $apache2::groupName,
    mode    => 644,
    before  => File[$apache2::configFile]
  }

  file { "${apache2::configDir}/${apache2::configFile}":
    ensure  => present,
    owner   => $apache2::userName,
    group   => $apache2::groupName,
    mode    => 664,
    source  => "puppet:///modules/apache2/httpd.conf",
    require => File["${apache2::configDir}"],
    before  => Service[$apache2::service],

  }

  user { "${apache2::userName}":
    ensure      => present,
    home        => "/home/$apache2::userName",
    managehome  => true,
    shell       => "/bin/bash",
    comment     => "Some User Account",
    before      => Package[$apache2::service]
  }

}

