class hosts {
	notify {'Hosts':
		message => "Updating Hosts File",
}
	host { 'syslog':
   		 ip => '10.10.10.10',
}

}
