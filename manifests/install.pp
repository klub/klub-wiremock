class wiremock::install inherits wiremock {

  include java

  file { "create_wiremock_dir":
    path   => $install_dir,
    ensure => directory,
    mode   => '0777',
  }

  exec {'download-wiremock-jar-file':
    command => "curl -o ${install_dir}/wiremock-${version}-standalone.jar http://repo1.maven.org/maven2/com/github/tomakehurst/wiremock/${version}/wiremock-${version}-standalone.jar",
    path => ['/usr/bin', '/bin', '/sbin'],
    logoutput => on_failure,
    require => File['create_wiremock_dir']
  }

  file { "${install_dir}/wiremock-standalone.jar":
    ensure => 'link',
    target => "${install_dir}/wiremock-${version}-standalone.jar",
    group => $wiremock_group,
    owner => $wiremock_owner,
    require => Exec['download-wiremock-jar-file']
  }
}
