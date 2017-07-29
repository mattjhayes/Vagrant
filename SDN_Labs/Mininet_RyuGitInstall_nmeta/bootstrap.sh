#!/usr/bin/env bash

#*** Ensure Ubuntu's Advanced Packaging Tool (apt) package index is up-to-date:
sudo apt-get update

#*** Install Mininet:
sudo apt-get -y install mininet

#*** Test Mininet:
sudo mn --test pingall

#*** Install dependancies for Ryu:
sudo apt-get install -y python-pip git git-flow
pip install --upgrade pip

#*** Clone Ryu from GitHub
cd ~/
git clone git://github.com/osrg/ryu.git
cd ryu
sudo pip install .

#*** Install nmeta app:
# First set of packages:
sudo apt-get install -y python-pytest python-yaml

# pip packages::
pip2.7 install dpkt mock requests simplejson eve coloredlogs voluptuous --user

# MongoDB:
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
sudo apt-get update
sudo apt-get install -y mongodb-org
systemctl enable mongod.service
sudo service mongod start

#*** Clone nmeta
cd ~/
git clone https://github.com/mattjhayes/nmeta.git

#*** Test nmeta:
cd ~/nmeta/tests/
py.test

#*** Set up aliases from file in synced_folder:
cp /vagrant/aliases ~/.bash_aliases

#*** Read in aliases for current session:
source ~/.bashrc