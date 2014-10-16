class jenkins::package () {

 
 exec { "create_jenkins_repo":
    command => "wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo;sudo rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key",
    path    => "/usr/local/bin/:/bin/:/usr/bin/",
    # path    => [ "/usr/local/bin/", "/bin/" ],  # alternative syntax
}
 
 
  package { $jenkins::packages:
 #name   => "httpd.x86_64",
    ensure => "installed",
    provider  => yum,
    require => Exec["create_jenkins_repo"],
}
#exec { "install_jre":
 #   command => "yum -y install jre",
  #  path    => "/usr/bin/",
#}


 
 

}
