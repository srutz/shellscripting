#!/bin/bash

TAG=$(dialog --menu choose 0 0 0 $(nl dirchooser.data | xargs) 3>&1 1>&2 2>&3 )
dialog --clear
clear
if [ -z "$TAG" ]
then
	echo "no choice"
	return 1
fi
DIR=$(sed -ne "$TAG"p dirchooser.data)
cd "$DIR"

