class test-notify {
	notify {'PAUL':
		message => "Hello Hello Hello",
}
#file { "/etc/resolv.conf":
 #   owner => root,
  #  group => root,
   # mode => 644,
   # source => "127.0.0.1:///files/resolv.conf"
#} 
#}
