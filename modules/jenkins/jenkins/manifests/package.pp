class jenkins::package () {

 
 exec { "create_jenkins_repo":
    command => "wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo;sudo rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key",
    path    => "/usr/local/bin/:/bin/:/usr/bin/",
    creates => "/etc/yum.repos.d/jenkins.repo"
  }
 
 
  package { $jenkins::packages:
 #name   => "httpd.x86_64",
    ensure => "installed",
    provider  => yum,
    require => Exec["create_jenkins_repo"],
}



 
 

}
