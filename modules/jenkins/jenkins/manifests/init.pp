class jenkins (

	$packages	= $jenkins::params::packages,
	$configDir	= $jenkins::params::configDir,
	$configFile	= $jenkins::params::configFile,
	$userName	= $jenkins::params::userName,
	$groupName	= $jenkins::params::groupName,
	$service	= $jenkins::params::service,

) inherits jenkins::params {
  class { 'jenkins::package': } -> class { 'jenkins::config': } -> class { 'jenkins::service': }
  
  }
