#!/usr/bin/env bash

#*** Provisioning Script that runs in the guest box

#*** Provision sw2 specific guest configuration:

#*** Set Open vSwitch DPID to 2:
sudo ovs-vsctl set bridge br0 other-config:datapath-id=0000000000000002
