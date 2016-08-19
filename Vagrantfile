# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/wheezy64"

  config.vm.provider :virtualbox do |vb|
    vb.customize ['modifyvm', :id, '--usb', 'on']
  end

  config.vm.provision "shell", inline: <<-SHELL
     echo "deb http://download.atmark-techno.com/debian/ wheezy main contrib non-free" >> /etc/apt/sources.list
     gpg --keyserver pgp.mit.edu --recv-keys 3874DA771B351757
     gpg --armor --export 3874DA771B351757 | apt-key add -
     apt-get update

     #for Armadillo-400 Series
     apt-get install -y a420-development-environment

     #for japanese Environment
     apt-get install -y task-japanese
     echo "ja_JP.UTF-8 UTF-8" >> /etc/locale.gen
     sudo locale-gen
     sudo update-locale LANG=ja_JP.UTF-8
  SHELL
end
