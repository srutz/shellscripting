#!/bin/bash

for file in "$@"
do

    if [[ -d "$file" ]]
    then
	echo $file is a directory
    elif [[ -L "$file" ]]
    then
	echo $file is a symlink
    elif [[ -f "$file" ]]
    then
	echo $file is a plain file
    fi
done

