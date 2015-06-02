# == Class: wiremock
#
# Class to install Wiremock.
#
# === Parameters
#
# [*version*]
#   The version of Wiremock you would like to install. Default is 1.56
#
# [*install_dir*]
#   The directory you would like to install the downloaded Wiremock .jar file
#
# [*wiremock_group*]
#   The group owners of the wiremock-standalone.jar symlink
#
# [*wiremock_owner*]
#   The owner of the wiremock-standalone.jar symlink
#
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Hiera Example
#
#  classes:
#   - wiremock
#
#  wiremock::wiremock_owner: 'vagrant'
#  wiremock::wiremock_group: 'vagrant'
#
#
# === Authors
#
# Bonamy Klu <info@bonamyklu.com>
#
#
class wiremock (
    $version = $wiremock::params::version,
    $install_dir = $wiremock::params::install_dir,
    $wiremock_group = $wiremock::params::wiremock_group,
    $wiremock_owner = $wiremock::params::wiremock_group

) inherits wiremock::params {
  include wiremock::install
}
