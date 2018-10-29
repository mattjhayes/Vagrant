#!/usr/bin/env bash

#*** Provisioning Script that runs in the guest box

#*** Provision generic client guest configuration:

#*** Set up aliases from file in synced_folder:
cp /vagrant/aliases_pc1 ~/.bash_aliases

#*** Read in aliases for current session:
source ~/.bashrc

# Add static routes:
sudo ip route add 10.2.0.0/24 via 10.1.0.1
sudo ip route add 10.3.0.0/24 via 10.1.0.1

# Create a simple file to POST:
# (phrase "This is a test file that needs fragmented packets" is 50 chars)
# and repeat 30 times
yes This is a test file that needs fragmented packets | head -n 30 > pc1_1500_byte.txt
