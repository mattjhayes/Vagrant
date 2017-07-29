Mininet & Ryu Virtual Lab
=========================

This directory contains Vagrant files that stand up a single-guest Mininet and 
Ryu controller virtual SDN lab

+--------------------------+---------------------+
| Number of Guests         |                   1 |
+--------------------------+---------------------+
| Guest OS                 | Ubuntu 16.04 Server |
+--------------------------+---------------------+
| Total Virtual CPUs       |                   2 |
+--------------------------+---------------------+
| Total Virtual RAM        |                1 GB |
+--------------------------+---------------------+
| SDN App                  |               nmeta |
+--------------------------+---------------------+
| SDN Controller           |                 Ryu |
+--------------------------+---------------------+
| OpenFlow Switch          |             Mininet |
+--------------------------+---------------------+

Run the Lab
-----------

Clone the repo, open a command prompt and navigate to this directory, then type *vagrant up*

You can SSH onto the guest at localhost on port 2222, username and password are both *vagrant*