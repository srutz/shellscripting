#!/bin/bash

P=/usr/bin:/bin:/usr/sbin

IFS=":"; for ENTRY in $P; do
	NUMENTRIES=$(test -d "$ENTRY" && ls -l "$ENTRY" | wc -l)
	
	printf "%5g entries in: %s\n" ${NUMENTRIES:-"0"} "$ENTRY"
done | sort -rn

