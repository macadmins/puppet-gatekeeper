# Class: gatekeeper
#
#
class gatekeeper {
  unless $facts['gatekeeper'] {
    exec { '/usr/sbin/spctl --master-enable':}
  }
}
