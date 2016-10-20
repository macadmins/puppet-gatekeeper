Facter.add(:gatekeeper) do
  confine kernel: 'Darwin'
  setcode do
    if File.exist?('/usr/sbin/spctl')
      Facter::Util::Resolution.exec('/usr/sbin/spctl --status').include?('disabled') ? false : true
    end
  end
end
