# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  config.vm.box = "lalocespedes/precise32"
  config.ssh.username = "vagrant"
  config.ssh.password = "vagrant"
  config.vm.network "private_network", ip: "78.78.78.16"

  config.vm.synced_folder "./projects",
  "/home/lalocespedes/projects", :mount_options => ["dmode=777", "fmode=777"], create:true

  config.vm.provision "shell" do |script|
    script.path = "provisioner.sh"
  end
end
