Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "forwarded_port", guest: 80, host: 8084
  config.vm.network "private_network", ip: "192.168.50.100",:name => 'vboxnet0',:adapter => 2
  config.vm.synced_folder "vagrant/www/", "/var/www"

  config.vm.provider "virtualbox" do |vb|
  vb.gui = true
  vb.name="asset-server"
  vb.memory = "512"
  end

  config.vm.provision "shell", run: "always", inline: <<-SHELL
  sudo apt-get update
  sudo apt-get upgrade -y
  SHELL

  config.vm.provision "shell", inline: <<-SHELL
  sudo apt-get install -y apache2
  mkdir /var/www/html/js
  mkdir /var/www/html/docker
  SHELL
end
