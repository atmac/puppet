class jenkins::config {

  
#file { "${jenkins::configDir}":
#    ensure  => directory,
 #   owner   => $jenkins::userName,
 #   group   => $jenkins::groupName,
 #   mode    => 644,
   # before  => File[$jenkins::configFile]
  

#  file { "${jenkins::configDir}/${jenkins::configFile}":
#    ensure  => present,
#    owner   => $jenkins::userName,
#    group   => $jenkins::groupName,
#    mode    => 664,
#    source  => "puppet:///modules/jenkins/etc/httpd/conf/httpd.conf",
#    require => File["${jenkins::configDir}"],
#    #before  => Service[$jenkins::service],

  

  user { "jenkinslave":
    ensure      => present,
    home        => "/home/jenkinslave",
    managehome  => true,
    shell       => "/bin/bash",
    comment     => "Jenkinslave User Account",
   
  }

  ssh_authorized_key { 'jenkinslave@ks00':
  user => 'jenkinslave',
  type => 'ssh-rsa',
  key  => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAtzAEdYvV8kqdsDjSFn3XqpGaJRg0cXUrmnL9Bxnygy3cH/xKRC3MJl7F96kUQr/V0yTqbTauhth8ds4VTjjbqzacL1Jfr09pzZ2e44tVcvX+KznlmBg43sWn07/cLAPw+vCx1v1CX61Wv/UVkD2Cd2TkOZbofM5sHiQDkWfYa+fcgEsKSA0Vb3NfIs/3yH1zuoYUDPZj+q508V1rTr6xuxzhR1rMt1aPxFxAnA506K7BakMEJyrtCeXLzVVk/bOFZTlo+66UuengJ0CzWCB9QKjcCrsYh5Bob75B53fDXutQxDTGMJuJ1rL2yWcL+8zcEyPArLV6JiNSQmHHby9Kcw==',
}

  ssh_authorized_key { 'jenkins@ks00':
  user => 'jenkinslaves',
  type => 'ssh-rsa',
  key  => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAu9UdJvr5EEVCvXKq8U84+OFZ+vCoLNWK/9XZ+b4JnPeC4gU/dIge4/AdrMTFJAULrxpBYQxLVB4bpQHrfP1jzl25e2xOlsiNMGhbKqGdTDEwP/9bnCcVKrS0X0D7nv9AxBOxbSkYKS3PqnbcLBDwYWG3w6Yx4npZSElWGgjN3ImRr4fH8yJeaQlSPDjvUO20lvCbgxQT5ZrMwAzDHl5/SxrGDcwTJx3VP3rg5ROnDvlSe/ntfnPOGAFLFBiZJw+MIX+8/94leOw/DmTEG/WxsS2HO+DZ11tq7MvmjYRfMmGNk0hNYoOXp2K06F9fR7pQRcJTJRs+rpxQPEzBGsRkgw==',
}







