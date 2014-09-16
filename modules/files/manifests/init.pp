class files {

file { "/etc/resolv.conf":
   ensure  => present,
    #owner   => $apache2::userName,
    #group   => $apache2::groupName,
    mode    => 644,
    source  => "puppet:///modules/files/resolv.conf",
}
}  
