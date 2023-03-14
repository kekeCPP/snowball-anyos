#!/bin/bash

vboxmanage createvm --name alpine2 --ostype Linux_64 --register
vboxmanage modifyvm alpine2 --memory 1024 --vram 128
# vboxmanage createhd --filename ~/VirtualBox\ VMs/alpine2/alpine2.vdi --size 80000 --format VDI
vboxmanage createhd --filename /root/VirtualBox\ VMs/alpine2/alpine2.vdi --size 80000 --format VDI
vboxmanage storagectl alpine2 --name "SATA Controller" --add sata
# vboxmanage storageattach alpine2 --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium ~/VirtualBox\ VMs/alpine2/alpine2.vdi
vboxmanage storageattach alpine2 --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium /root/VirtualBox\ VMs/alpine2/alpine2.vdi
vboxmanage storagectl alpine2 --name "IDE Controller" --add ide
# cp ../alpine-standard-3.17.2-x86_64.iso ~/VirtualBox\ VMs/alpine2/alpine-standard-3.17.2-x86_64.iso
cp ./alpine-standard-3.17.2-x86_64.iso /root/VirtualBox\ VMs/alpine2/alpine-standard-3.17.2-x86_64.iso
# vboxmanage storageattach alpine2 --storagectl "IDE Controller" --port 1 --device 0 --type dvddrive --medium ~/VirtualBox\ VMs/alpine2/alpine-standard-3.17.2-x86_64.iso
vboxmanage storageattach alpine2 --storagectl "IDE Controller" --port 1 --device 0 --type dvddrive --medium /root/VirtualBox\ VMs/alpine2/alpine-standard-3.17.2-x86_64.iso
vboxmanage modifyvm alpine2 --boot1 dvd --boot2 disk --boot3 none --boot4 none
# cd ~/VirtualBox\ VMs
# cd $(pwd)/vm
# chown $1 -R alpine2
chown $1 -R /root/VirtualBox\ VMs/alpine2
