Vagrant.configure("2") do |config|
    config.vm.provision "shell", inline: "Create two virtual machine"
  
    config.vm.define "machine1" do |machine1|
        machine1.vm.box = "centos/7"
        machine1.vm.hostname = "machine1"
        machine1.vm.network "public_network", ip: "192.168.0.10", hostname: true

    end
  
    config.vm.define "machine2" do |machine2|
        machine2.vm.box = "centos/7"
        machine2.vm.hostname = "machine2"
        machine2.vm.network "public_network", ip: "192.168.0.11", hostname: true
    end
  end
