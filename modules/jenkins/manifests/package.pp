class jenkins::package () {

  package { $jenkins::packages:
 #name   => "httpd.x86_64",
    ensure => "installed",
    provider  => yum,
}
exec { "install_jre":
    command => "yum -y install jre",
    path    => "/usr/bin/",
}

exec { "create_jenkins_repo":
    command => "wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo;sudo rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key",
    path    => "/usr/local/bin/:/bin/:/usr/bin/",
    # path    => [ "/usr/local/bin/", "/bin/" ],  # alternative syntax
}
 #sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
#sudo rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key
 
 

}
