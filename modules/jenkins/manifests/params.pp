class jenkins::params {

  $packages	= ['java-1.7.0-openjdk','jenkins']
  $configDir	= '/var/lib/jenkins/'
  $configFile	= 'config.xml'
  $userName	= 'jenkins'
  $groupName	= 'jenkins'
  $service	= 'jenkins'
}
