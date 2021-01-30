Vagrant.configure("2") do |config|
    config.vm.box = "centos/7"
    config.vm.hostname = "BuildMachine1"
    config.vm.define "BuildMachine1"
    config.vm.network :public_network, bridge: "wlp6s0"
    config.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
    end
end

Vagrant.configure("2") do |config|
    config.vm.box = "centos/7"
    config.vm.hostname = "BuildMachine2"
    config.vm.define "BuildMachine2"
    config.vm.network :public_network, bridge: "wlp6s0"
    config.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
    end
end
