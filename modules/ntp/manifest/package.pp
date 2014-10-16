class ntp::package () {

  package { $ntp::packages:
  name => "ntp.x86_64", 
  ensure    => installed,
  provider  => yum,
      
  }

}

#class ntp 

#package { 'ntp':
#        ensure => installed,
   #   }
  #    file { 'ntp.conf':
 #       path    => '/etc/ntp.conf',
    #    ensure  => file,
   #     require => Package['ntp'],
  #      source  => "puppet:///modules/ntp/etc/ntp.conf",
        
      # source  => "/root/examples/answers/${conf_file}"
      
      
