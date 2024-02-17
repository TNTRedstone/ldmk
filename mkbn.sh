#!/bin/bash

ORIGINAL_NAME=$1 # set the name to be the first argument passed in
NAME=$(echo "${ORIGINAL_NAME}" | sed 's/ /_/g')

cd ~/Documents/coding-projects/

bun create vite@latest "$NAME"
cd "$NAME"
zellij --session "$NAME" --layout ~/.config/zellij/mkbn.kdl
