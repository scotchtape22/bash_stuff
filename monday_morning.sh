#!/bin/bash

#Reset Hosts file

echo "Reseting hosts file...."
sudo echo -e "127.0.0.1\tlocalhost\n127.0.1.1\twambold-nexcess\n# The following lines are desirable for IPv6 capable hosts\n::1\tip6-localhost ip6-loopback\nfe00:0 ip6-localnet\nff00::0 ip6-mcastprefix\nff02::1 ip6-allnodes\nff02:22 ip6-allrouters" > /etc/hosts

##Apt-Get Update / Upgrade

echo "Upgrade system..."
sudo apt-get update
sudo apt-get upgrade
echo "Y"

#Delete all downloads

echo "Clearing downloads folder..."
rm -rf /home/admin-scott/Downloads/*

#Clear browsing chache?
