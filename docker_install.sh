#!/bin/bash

echo "###### System update ######"
sudo yum update -y
echo "###### Install packages require by the devicemapper storage driver ######"
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

echo "###### Install Docker-CE - Community Edition ######"
sudo yum install -y docker-ce

echo "###### Add user to Docker Group ######*"
USER_TO_DOCKER_GROUP=$(whoami)
sudo usermod -aG docker ${USER_TO_DOCKER_GROUP}

echo "###### Setting up Docker Service on Startup ######"
sudo systemctl enable docker.service

echo "###### Start Docker Service ######"
sudo systemctl start docker.service

if sudo systemctl status docker.service | grep 'active (exited)';
then
    echo "###### Docker was installed and run ######"
else
    echo "###### Docker not work ######"
    exit 1
fi

echo "###### Check Docker version ######"
sudo docker --version

echo "###### Clear ######"
sudo yum clean all
