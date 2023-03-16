#!/bin/bash

docker build --build-arg UID=$(id -u) -t test .
docker run -v /$(pwd)/vm:/root/VirtualBox\ VMs test

vboxmanage registervm $(pwd)/vm/alpine2/alpine2.vbox
