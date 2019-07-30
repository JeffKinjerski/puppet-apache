# @summary A short summary of the purpose of this class
#  Installs the base Apache Package
#
class apache::install (
  $install_Name   = $apache::params::install_name,
  $install_ensure = $apache::params::install_ensure, 
) inherits apache::params {
  package { "${install_Name}":
    ensure  => $install_ensure,
  }
}

