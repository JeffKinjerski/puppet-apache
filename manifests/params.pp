# @summary A short summary of the purpose of this class
#   Operating systen-related variables (and others)
class apache::params {
  $install_Ensure = 'present'
  case $::osfamily { 
    'Redhat': {
      $install_name = 'httpd'
    }
    'Debian': {
      $install_name = 'apache2'
    }
  }
}
