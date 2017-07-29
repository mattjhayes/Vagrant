Ryu and nmeta Multi-Guest Virtual Lab
=====================================

This repo contains Vagrant files that stand up a multi-guest Open vSwitch and 
Ryu controller with nmeta app virtual SDN lab.

+--------------------------+---------------------+
| Number of Guests         |                   5 |
+--------------------------+---------------------+
| Guest OS                 | Ubuntu 16.04 Server |
+--------------------------+---------------------+
| Total Virtual CPUs       |                   6 |
+--------------------------+---------------------+
| Total Virtual RAM        |                3 GB |
+--------------------------+---------------------+
| SDN App                  |               nmeta |
+--------------------------+---------------------+
| SDN Controller           |                 Ryu |
+--------------------------+---------------------+
| OpenFlow Switch          |        Open vSwitch |
+--------------------------+---------------------+

Run the Lab
-----------

Clone the repo, open a command prompt and navigate to this directory then type *vagrant up*

You can SSH onto the guest at localhost on port 2222, username and password are both *vagrant*
Subsequent guests are on ports 2200 upwards.