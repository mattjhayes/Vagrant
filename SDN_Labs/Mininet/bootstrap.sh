#!/usr/bin/env bash

#*** Install Mininet:
sudo apt-get -y install mininet

#*** Test Mininet:
sudo mn --test pingall

#*** Set up aliases from file in synced_folder:
cp /vagrant/aliases ~/.bash_aliases

#*** Read in aliases for current session:
source ~/.bashrc