#!/bin/bash


echo "############*** Update system ############***"
sudo yum -y update
echo "############*** Install VirtualBox ############***"
sudo yum -y install kernel-devel kernel-devel-$(uname -r) kernel-headers kernel-headers-$(uname -r) make patch gcc
sudo wget https://download.virtualbox.org/virtualbox/rpm/el/virtualbox.repo -P /etc/yum.repos.d
sudo yum -y install VirtualBox-5.2

if sudo systemctl status vboxdrv | grep 'active (exited)';
then
    echo "###### Virtualbox was installed ######"
else
    echo "###### Virtualbox was not installed ######"
    exit 1
fi

echo "############*** Install Vagrant ############***"
sudo yum -y install https://releases.hashicorp.com/vagrant/2.2.6/vagrant_2.2.6_x86_64.rpm

if vagrant --version | grep "Vagrant 2.2.6";
then
    echo "###### Vagrant was installed ######"
else
    echo "###### Vagrant was not installed ######"
    exit 1
fi

echo "############*** Install vagrant-vbguest ############***"
vagrant plugin uninstall vagrant-vbguest || true
vagrant plugin install vagrant-vbguest --plugin-version 0.21
if [ $? -eq 0 ]; then
    echo "Plugin was installed"
else
    echo "Plugin was not installed"
    exit 1
fi

echo "###### Clear ######"
sudo yum clean all
