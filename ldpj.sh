#!/bin/bash

set -e

FOLDER=$(find ~/Documents/coding-projects/ -maxdepth 1 | fzf)
CONTENTS=$(find "$FOLDER")
NAME=$(basename "$FOLDER" | gawk 'BEGIN { FS = "/" }; {print $NF}')

if [[ $(echo "$CONTENTS" | grep 'node_modules') ]]; then
	cd $FOLDER
	codium .
	zellij --session "$NAME" --layout ~/.config/zellij/mkbn.kdl
elif [[ $(echo "$CONTENTS" | grep '.py') ]]; then
	cd "$FOLDER"
	zellij --session "$NAME" --layout ~/.config/zellij/mkpy.kdl
elif [[ $(echo "$CONTENTS" | grep '.rs') ]]; then
	cd "$FOLDER"
	zellij --session "$NAME" --layout ~/.config/zellij/mkrs.kdl
elif [[ $(echo "$CONTENTS" | grep ".go" ) ]]; then
	cd "$FOLDER"
	zellij --session "$NAME" --layout ~/.config/zellij/mkgo.kdl
else
	cd "$FOLDER"
	zellij --session "$NAME" --layout ~/.config/zellij/ldpj.kdl
fi

