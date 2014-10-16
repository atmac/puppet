class jenkins::config {

  
#file { "${jenkins::configDir}":
#    ensure  => directory,
 #   owner   => $jenkins::userName,
 #   group   => $jenkins::groupName,
 #   mode    => 644,
   # before  => File[$jenkins::configFile]
  

#  file { "${jenkins::configDir}/${jenkins::configFile}":
#    ensure  => present,
#    owner   => $jenkins::userName,
#    group   => $jenkins::groupName,
#    mode    => 664,
#    source  => "puppet:///modules/jenkins/etc/httpd/conf/httpd.conf",
#    require => File["${jenkins::configDir}"],
#    #before  => Service[$jenkins::service],

  

  user { "jenkinslave":
    ensure      => present,
    home        => "/home/jenkinslave",
    managehome  => true,
    shell       => "/bin/bash",
    comment     => "Jenkinslave User Account",
   
  }
}


