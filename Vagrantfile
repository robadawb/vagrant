# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |v|
    v.name = "vagrant"
    v.cpus = 1
    v.memory = 256
  end
  config.vm.box = "centos/7"
  config.vm.provision :shell, path: "bootstrap.sh"
end
