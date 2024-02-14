#!/bin/bash


IFS=":"; for ENTRY in $PATH; do
	NUMENTRIES=$(test -d $ENTRY && ls -l "$ENTRY" | wc -l)
	
	printf "%5g entries in: %s\n" ${NUMENTRIES:-"0"} "$ENTRY"
done | sort -rn

