class jre::config {

  
#file { "${jre::configDir}":
#    ensure  => directory,
 #   owner   => $jre::userName,
 #   group   => $jre::groupName,
 #   mode    => 644,
   # before  => File[$jre::configFile]
  

#  file { "${jre::configDir}/${jre::configFile}":
#    ensure  => present,
#    owner   => $jre::userName,
#    group   => $jre::groupName,
#    mode    => 664,
#    source  => "puppet:///modules/jre/etc/httpd/conf/httpd.conf",
#    require => File["${jre::configDir}"],
#    #before  => Service[$jre::service],

  

#  user { "${jre::userName}":
 #   ensure      => present,
  #  home        => "/home/$jre::userName",
   # managehome  => true,
    #shell       => "/bin/bash",
   # comment     => "Some User Account",
   
  }



