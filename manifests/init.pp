# Class: aix_sys0
#
# This module manages aix_tunables
#
# Parameters: none
#
# Actions: This module sets the desired states for AIX sys0 tunables
#
# Requires: see Modulefile
#
# Sample Usage:
#
# class aix_sys0 {
#  sys0 { 'standard_settings':
#    maxuproc    => your_parameter,
#    max_logname => your_parameter,
#    ncargs      => your_parameter,
#    maxbuf      => your_parameter,
#  }
#}

class aix_sys0 (
  $maxuproc    = $aix_sys0::params::maxuproc,
  $max_logname = $aix_sys0::params::max_logname,
  $ncargs      = $aix_sys0::params::ncargs,
  $maxbuf      = $aix_sys0::params::maxbuf,
  $iostat      = $aix_sys0::params::iostat,
) inherits aix_sys0::params {

  sys0 { 'standard_settings':
    maxuproc    => $maxuproc,
    max_logname => $max_logname,
    ncargs      => $ncargs,
    maxbuf      => $maxbuf,
    iostat      => $iostat,
  }
}
