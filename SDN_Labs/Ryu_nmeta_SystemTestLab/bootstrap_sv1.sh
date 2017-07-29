#!/usr/bin/env bash

#*** Provisioning Script that runs in the guest box

#*** Provision generic server guest configuration:

#*** Set up aliases from file in synced_folder:
cp /vagrant/aliases_sv1 ~/.bash_aliases

#*** Read in aliases for current session:
source ~/.bashrc

#*** Install LLDP:
sudo apt-get -y install lldpd

