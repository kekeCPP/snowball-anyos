#!/bin/bash

# $1 = vm service name

docker build --build-arg UID=$(id -u) -t snowball-image .
docker run -v /$(pwd)/vm:/root/VirtualBox\ VMs snowball-image $(id -u) $1

vboxmanage registervm $(pwd)/vm/$1/$1.vbox