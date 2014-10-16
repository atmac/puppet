class jre::service {

#  service { "${jre::service}":
 #   name        => $jre::service,
  #  ensure      => running,
#    enable      => true,
 #   hasstatus   => true,
  #  hasrestart  => true,
#    require     => File["${jre::configDir}/${jre::configFile}"],
 #   subscribe   => File["${jre::configDir}/${jre::configFile}"],
  #}

}
