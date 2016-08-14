##################################################
### https://github.com/julienstroheker/DSV.git ###
##################################################

Vagrant.configure("2") do |config|
  config.vm.provision :shell, path: "scripts/bootstrap.sh"
  config.vm.box = "ubuntu/trusty64"

    config.vm.define "manager" do |manager|
      manager.vm.hostname = "manager"
      manager.vm.network "forwarded_port", guest: 4243, host: 4243
      manager.vm.network "private_network", ip: "10.0.0.10"
      manager.vm.provision :shell, path: "scripts/manager.sh" 
  end
  
  (1..2).each do |i|
  config.vm.define "node-#{i}" do |node|
    node.vm.hostname = "node-#{i}"
    node.vm.provision :shell, path: "scripts/node.sh"
    node.vm.network "private_network", ip: "10.0.0.2#{i}"
    end
  end

end
