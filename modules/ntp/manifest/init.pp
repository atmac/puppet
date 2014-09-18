class ntp (

	$packages	= $ntp::params::packages,
	$configDir	= $ntp::params::configDir,
	$configFile	= $ntp::params::configFile,
	$userName	= $ntp::params::userName,
	$groupName	= $ntp::params::groupName,
	$service	= $ntp::params::service,

) inherits ntp::params {
  class { 'ntp::package': } -> class { 'ntp::config': } -> class { 'ntp::service': }
  
  }
