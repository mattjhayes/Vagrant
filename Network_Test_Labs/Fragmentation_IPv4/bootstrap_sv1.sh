#!/usr/bin/env bash

#*** Provisioning Script that runs in the guest box

#*** Provision generic client guest configuration:

#*** Set up aliases from file in synced_folder:
cp /vagrant/aliases_sv1 ~/.bash_aliases

#*** Read in aliases for current session:
source ~/.bashrc

# Add static routes:
sudo ip route add 10.1.0.0/24 via 10.3.0.1
sudo ip route add 10.2.0.0/24 via 10.3.0.1

# Start a really simple web server. Security warning: don't do this on a real system!
sudo python3 -m http.server 80&

# Create a simple file to serve:
# (phrase "This is a test file that needs fragmented packets" is 50 chars)
# and repeat 30 times
yes This is a test file that needs fragmented packets | head -n 30 > 1500byte.txt
