# Class: gatekeeper
#
#
class gatekeeper {
  if $facts['gatekeeper'] == false {
    exec { '/usr/sbin/spctl --master-enable':}
  }
}
