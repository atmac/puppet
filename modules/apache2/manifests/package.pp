class apache2::package () {

  package { $apache2::packages:
  #name   => "httpd.x86_64",
  ensure    => installed,
  provider  => apt,
#  provider  => yum,
 #   allow_virtual => false,
       
  }

}
