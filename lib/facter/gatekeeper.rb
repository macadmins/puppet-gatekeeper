Facter.add(:gatekeeper) do
  confine osfamily: 'Darwin'
  setcode do
    Facter::Util::Resolution.exec('/usr/sbin/spctl --status').include?('disabled') ? false : true
  end
end
