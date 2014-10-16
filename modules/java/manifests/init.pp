class java (

	$packages	= $java::params::packages,
#	$configDir	= $jre::params::configDir,
	#$configFile	= $jre::params::configFile,
#	$userName	= $jre::params::userName,
	#$groupName	= $jre::params::groupName,
	#$service	= $jre::params::service,

) inherits java::params {
  class { 'java::package': }
# -> class { 'jre::config': } -> class { 'jre::service': }
  
  }
