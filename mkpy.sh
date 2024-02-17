#!/bin/bash

ORIGINAL_NAME=$1 # set the name to be the first argument passed in
NAME=$(echo "${ORIGINAL_NAME}" | sed 's/ /_/g')

mkdir -p ~/Documents/coding-projects/"$NAME"
touch ~/Documents/coding-projects/"$NAME"/main.py

cd ~/Documents/coding-projects/"$NAME"
zellij --session "$NAME" --layout ~/.config/zellij/mkpy.kdl
