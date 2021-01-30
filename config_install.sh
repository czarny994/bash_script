#!/bin/bash

echo "###### Update System ######"
sudo yum -y update
echo "###### Nano install ######"
sudo yum -y install nano
echo "###### Git install ######"
sudo yum -y install git
echo "###### Net-tools install ######"
sudo yum -y install net-tools
echo "###### Clear ######"
sudo yum clean all
