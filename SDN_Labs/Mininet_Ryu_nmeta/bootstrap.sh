#!/usr/bin/env bash

#*** Provisioning Script that runs in the guest box

#*** Ensure Ubuntu's Advanced Packaging Tool (apt) package index is up-to-date:
sudo apt-get update

#*** Install Mininet:
sudo apt-get -y install mininet

# First set of packages:
sudo apt-get install -y python-pip git git-flow python-pytest python-yaml

# pip packages::
pip install --upgrade pip
pip2.7 install ryu dpkt mock requests simplejson eve coloredlogs voluptuous --user

# MongoDB:
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
sudo apt-get update
sudo apt-get install -y mongodb-org
systemctl enable mongod.service
sudo service mongod start

#*** Test Mininet:
sudo mn --test pingall

#*** Clone nmeta
cd ~/
git clone https://github.com/mattjhayes/nmeta.git

#*** Set up aliases from file in synced_folder:
cp /vagrant/aliases ~/.bash_aliases

#*** Read in aliases for current session:
source ~/.bashrc
