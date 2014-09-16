class apache2 (

	$packages	= $apache2::params::packages,
	$configDir	= $apache2::params::configDir,
	$configFile	= $apache2::params::configFile,
	$userName	= $apache2::params::userName,
	$groupName	= $apache2::params::groupName,
	$service	= $apache2::params::service,

) inherits apache2::params {
  class { 'apache2::package': } -> class { 'apache2::config': } -> class { 'apache2::service': }
  
  }
