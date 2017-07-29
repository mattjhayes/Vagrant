#!/usr/bin/env bash

#*** Provisioning Script that runs in the guest box

#*** Provision generic switch guest configuration:

#*** Install Open vSwitch:
sudo apt-get -y install openvswitch-switch

#*** Configure Open vSwitch:
sudo ovs-vsctl add-br br0
sudo ovs-vsctl add-port br0 enp0s8
sudo ovs-vsctl add-port br0 enp0s9
sudo ovs-vsctl add-port br0 enp0s17
sudo ovs-vsctl set bridge br0 other-config:datapath-id=0000000000000001
sudo ovs-vsctl set bridge br0 protocols=OpenFlow13
#*** Note: doesn't work with official 6533 port, so use old port...???:
sudo ovs-vsctl set-controller br0 tcp:172.16.0.3:6633

#*** Set up aliases from file in synced_folder:
cp /vagrant/aliases_swX ~/.bash_aliases

#*** Read in aliases for current session:
source ~/.bashrc

#*** Install LLDP:
sudo apt-get -y install lldpd

