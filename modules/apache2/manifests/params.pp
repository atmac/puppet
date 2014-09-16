class apache2::params {

  $packages		= 'httpd'
  $configDir	= '/etc/httpd/conf/'
  $configFile	= 'httpd.conf'
  $userName		= 'apache'
  $groupName	= 'apache'
  $service		= 'httpd'
}
