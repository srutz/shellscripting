#!/bin/bash

DOC=$(
cat << ENDDOC
🯰
🯱
🯲
🯳
🯴
🯵
🯶
🯷
🯸
🯹
ENDDOC
)

displaynumber() {
	num=$1
	len=${#num}
	for (( i=0; i<$len; i++ ))
	do
	    digit=${num:$i:1}
	    case $digit in
		[0-9])
		    segment=$(echo "$DOC" | sed -ne $(( $digit + 1 ))p )
		    echo -n $segment
		    ;;
		*)
		    echo -n $digit
		    ;;
	    esac
	done
	echo
}

while true
do
    clear
    displaynumber $(date +%T)
    sleep 1
done
   




