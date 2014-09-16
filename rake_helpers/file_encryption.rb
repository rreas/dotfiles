class FileEncryption
  def self.check
    puts 'Checking for file-system encryption with FileVault'
    result = `sudo fdesetup status`
    raise 'Please turn on file-system encryption' if result.match %r(is Off.)
    puts 'FileVault is on'
  end
end
