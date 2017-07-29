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

#*** Set up aliases from file in synced_folder:
cp /vagrant/aliases ~/.bash_aliases

#*** Read in aliases for current session:
source ~/.bashrc