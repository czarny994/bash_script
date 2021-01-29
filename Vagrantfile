Vagrant.configure("2") do |config|
    config.vm.provision "shell", inline: "Create two virtual machine"
  
    config.vm.define "machine_1" do |machine_1|
        machine_1.vm.box = "centos/7"
        machine_1.vm.hostname = "machine_1"
        machine_1.vm.network "public_network", ip: "192.168.0.10", hostname: true

    end
  
    config.vm.define "machine_2" do |machine_2|
        machine_2.vm.box = "centos/7"
        machine_2.vm.hostname = "machine_2"
        machine_2.vm.network "public_network", ip: "192.168.0.11", hostname: true
    end
  end
