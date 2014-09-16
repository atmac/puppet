node ks00 {	
#class { 'ntp': }


#class { 'files': } 
class { 'apache2':}
#class { 'ntp': } 
}
#class { 'test-notify':}
#class { 'apache2':}


#node 'ks01' {
 #    class { 'apache2': }
#include apache2::package
