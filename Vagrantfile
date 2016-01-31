# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    
  if (/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM) != nil
    config.vm.synced_folder ".", "/vagrant", mount_options: ["dmode=700,fmode=600"]
  else
    config.vm.synced_folder ".", "/vagrant"
  end

  #config.vm.provider "docker" do |d|
    #config.ssh.insert_key
    #d.build_dir = "."
  #end

  config.vm.provider "virtualbox" do |v|
    config.vm.box = "bento/centos-7.2"
    v.memory = 2048
  end

  config.vm.define :sipxecs do |dev|
    dev.vm.network "private_network", ip: "10.100.199.200"
    dev.vm.provision :shell, path: "bootstrap.sh"
  end

  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end

end
