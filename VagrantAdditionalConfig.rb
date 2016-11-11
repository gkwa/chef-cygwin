VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Upgrade guest additions to get around cygwin setup fails
  if Vagrant.has_plugin?('vagrant-vbguest')
    config.vbguest.auto_update = true
  end
end
