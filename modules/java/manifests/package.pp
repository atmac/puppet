class java::package () {

  package { $java::packages:
 #name   => "httpd.x86_64",
#  distribution => 'jre',
    ensure => "installed",
    provider  => yum,
}
 
 

}
