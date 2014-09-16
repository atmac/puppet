class apache2::package () {

  package { $apache2::packages:
  ensure    => installed,
 #   allow_virtual => false,
       
  }

}
