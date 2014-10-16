class jre::package () {

  package { $jre::packages:
    ensure => "installed",
    provider  => yum,
}

}
