Mininet & Ryu (git install) Virtual Lab
=======================================

This repo contains Vagrant files that stand up a single-guest Mininet and 
Ryu controller virtual SDN lab. Ryu is installed via git, instead of pip, to
allow patches to be applied if desired.

+--------------------------+------------+
| Number of Guests         |          1 |
+--------------------------+------------+
| Total Virtual CPUs       |          2 |
+--------------------------+------------+
| Total Virtual RAM        |       1 GB |
+--------------------------+------------+
| SDN Controller           |        Ryu |
+--------------------------+------------+
| OpenFlow Switch          |    Mininet |
+--------------------------+------------+

Clone the repo, open a command prompt and navigate to this directory then type *vagrant up*

You can SSH onto the guest at localhost on port 2222, username and password are both *vagrant*