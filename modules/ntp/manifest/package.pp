class ntp::package () {

  package { $ntp::packages:
  ensure    => installed,
  provider  => yum,
       
  }

}

#class ntp

#package { 'ntp':
 #       ensure => installed,
  #    }
   #   file { 'ntp.conf':
    #    path    => '/etc/ntp.conf',
     #   ensure  => file,
      #  require => Package['ntp'],
  #      source  => "/root/examples/answers/${conf_file}"
 #     }
