# -*- mode: ruby -*-
# vi: set ft=ruby :
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/bionic64"
  config.vm.network :public_network
  config.vm.provider :virtualbox do |vb|
    vb.name = "dionaea-vagrant"
  end

  config.vm.provision "shell", inline: "cp /vagrant/*.sh /home/vagrant/"
  config.vm.provision "shell", inline: "cd /home/vagrant/ && sh setupDionaea.sh && sh configureDionaea.sh && sh runDionaea.sh"
  config.vm.provision "shell", inline: "echo '@reboot vagrant /home/vagrant/runDionaea.sh' >> /etc/cron.d/dionaea"
end
