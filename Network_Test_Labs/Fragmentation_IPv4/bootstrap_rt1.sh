#!/usr/bin/env bash

#*** Provisioning Script that runs in the guest box

#*** Provision generic client guest configuration:

#*** Set up aliases from file in synced_folder:
cp /vagrant/aliases_rt1 ~/.bash_aliases

#*** Read in aliases for current session:
source ~/.bashrc

# Enable IP forwarding:
echo "1" | sudo tee /proc/sys/net/ipv4/ip_forward

# Add static route:
sudo ip route add 10.3.0.0/24 via 10.2.0.2

# Reduce MTU on connection between routers to cause IP fragmentation
sudo ifconfig eth2 mtu 1200
