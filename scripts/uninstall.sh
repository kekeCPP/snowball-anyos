#!/bin/bash

vboxmanage unregistervm alpine2 --delete
# vboxmanage closemedium dvd ~/VirtualBox\ VMs/alpine2/alpine-standard-3.17.2-x86_64.iso --delete
vboxmanage closemedium dvd $(pwd)/vm/alpine2/alpine-standard-3.17.2-x86_64.iso --delete
