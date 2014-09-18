class ntp::config {

  
 file { "${ntp::configDir}":
    ensure  => directory,
    owner   => $ntp::userName,
    group   => $ntp::groupName,
    mode    => 644,
   # before  => File[$ntp::configFile]
  }

  file { "${ntp::configDir}/${ntp::configFile}":
    ensure  => present,
    owner   => $ntp::userName,
    group   => $ntp::groupName,
    mode    => 664,
    source  => "puppet:///modules/ntp/etc/ntp.conf",
    require => File["${ntp::configDir}"]
    #before  => Service[$ntp::service],

  }

#  user { "${ntp::userName}":
 #   ensure      => present,
  #  home        => "/home/$ntp::userName",
   # managehome  => true,
    #shell       => "/bin/bash",
   # comment     => "Some User Account",
   
  #}

}

