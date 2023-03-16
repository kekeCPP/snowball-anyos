#!/bin/bash

# $1 = user id
# $2 = vm service name

vboxmanage createvm --name $2 --ostype Linux_64 --register
vboxmanage modifyvm $2 --memory 1024 --vram 128
vboxmanage createhd --filename /root/VirtualBox\ VMs/$2/$2.vdi --size 80000 --format VDI
vboxmanage storagectl $2 --name "SATA Controller" --add sata
vboxmanage storageattach $2 --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium /root/VirtualBox\ VMs/$2/$2.vdi
vboxmanage storagectl $2 --name "IDE Controller" --add ide
cp ./$2.iso /root/VirtualBox\ VMs/$2/$2.iso
vboxmanage storageattach $2 --storagectl "IDE Controller" --port 1 --device 0 --type dvddrive --medium /root/VirtualBox\ VMs/$2/$2.iso
vboxmanage modifyvm $2 --boot1 dvd --boot2 disk --boot3 none --boot4 none
chown $1 -R /root/VirtualBox\ VMs
