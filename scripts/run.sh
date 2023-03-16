#!/bin/bash

docker build --build-arg UID=$(id -u) -t test .
# docker run -v ~/VirtualBox\ VMs:/root/VirtualBox\ VMs test
docker run -v /$(pwd)/vm:/root/VirtualBox\ VMs test
# vboxmanage registervm /home/$USER/VirtualBox\ VMs/alpine2/alpine2.vbox

vboxmanage registervm $(pwd)/vm/alpine2/alpine2.vbox
