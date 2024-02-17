#!/bin/bash

### Get zellij templates copied
mkdir -p ~/.config/zellij/
cp ./*.kdl ~/.config/zellij/

### Move scripts to /usr/bin/

echo "THIS SCRIPT IS GOING TO USE SUDO, EVERY COMMAND THAT IS RAN WILL BE PRINTED OUT TO YOU. YOU MAY CHECK THE SCRIPT IF YOU STILL THINK ANYTHING MALICOUS IS HAPPENING"

echo
echo
echo

echo "sudo cp ./ldpj.sh /usr/bin/ldpj"
sudo cp ./ldpj.sh /usr/bin/ldpj

echo

echo "sudo cp ./mkbn.sh /usr/bin/mkbn"
sudo cp ./mkbn.sh /usr/bin/mkbn

echo

echo "sudo cp ./mkgo.sh /usr/bin/mkgo"
sudo cp ./mkgo.sh /usr/bin/mkgo

echo

echo "sudo cp ./mkpy.sh /usr/bin/mkpy"
sudo cp ./mkpy.sh /usr/bin/mkpy

echo

echo "sudo cp ./mkrs.sh /usr/bin/mkrs"
sudo cp ./mkrs.sh /usr/bin/mkrs

echo

echo "LDMK is now installed. Have fun."
