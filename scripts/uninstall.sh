#!/bin/bash

# $1 = vm service name

vboxmanage unregistervm $1 --delete
vboxmanage closemedium dvd $(pwd)/vm/$1/$1.iso --delete
