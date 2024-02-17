#!/bin/bash

ORIGINAL_NAME=$1 # set the name to be the first argument passed in
NAME=$(echo "${ORIGINAL_NAME}" | sed 's/ /_/g')

mkdir -p ~/Documents/coding-projects/"$NAME"
cd ~/Documents/coding-projects/"$NAME"
go mod init main/"$NAME"

touch ~/Documents/coding-projects/"$NAME"/"$NAME".go

zellij --session "$NAME" --layout ~/.config/zellij/mkgo.kdl
