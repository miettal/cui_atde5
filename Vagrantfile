# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/wheezy64"
  config.vm.network :public_network

  config.vm.provider :virtualbox do |vb|
    vb.customize ['modifyvm', :id, '--usb', 'on']
  end

  config.vm.provision :shell, :path => "install.sh"
  config.vm.provision :shell, privileged: false, :path => "install2.sh"
end
