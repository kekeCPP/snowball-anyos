#!/bin/bash

# $1 = vm download url
# $2 = vm service name

# cd /root/VirtualBox\ VMs/$2
wget -O $2.iso $1
# wget -O /root/VirtualBox\ VMs/$2/$2.iso $1
