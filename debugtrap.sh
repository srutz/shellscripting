#!/bin/bash

debugtrap() {
	echo "# $BASH_COMMAND";
	while read -rep "$? debug> " CMD
	do
        	if [ -n "$CMD" ]; then
	            eval "$CMD"
	        else
        	    break
        	fi
	done
}


TARGET="$1"
shift
set -T
trap debugtrap DEBUG
source "$TARGET" "$@"

