class jre (

	$packages	= $jre::params::packages,
#	$configDir	= $jre::params::configDir,
	#$configFile	= $jre::params::configFile,
#	$userName	= $jre::params::userName,
	#$groupName	= $jre::params::groupName,
	#$service	= $jre::params::service,

) inherits jre::params {
  class { 'jre::package': }
# -> class { 'jre::config': } -> class { 'jre::service': }
  
  }
