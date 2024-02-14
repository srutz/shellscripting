#!/bin/bash
CONTEXTLINES=0 # to be used for grep -A and -B
INSENSTIVE="" # option for grep
while getopts ":c:i" opt; do
        case "$opt" in
                c)
                        CONTEXTLINES=$OPTARG
                        ;;
                i)
                        INSENSITIVE="i"
                        ;;
                :)
                        echo "option -$OPTARG needs argument" >&2
                        ;;
                \?)
                        echo "unknown option: -$OPTARG" >&2
                        exit 1
                        ;;
        esac
done
# adjust the remaining arguments
shift $((OPTIND - 1))
 
# check number of arguments
if [ $# -ne 2 ]; then
        echo "usage $(basename $0) NEEDLE DIRECTORY" >&2
        exit 1
fi
 
# validate number of contextlines
if [[ ! "$CONTEXTLINES" =~ [0-9]+ || "$CONTEXTLINES" -lt 0 || "$CONTEXTLINES" -ge 100 ]]; then
        echo "-c option needs a number between 0 and 99" >&2
        exit 1
fi
 
# run the script
find "$2" -type f \
        | sort \
        | while read LINE
do
        grep -A "$CONTEXTLINES" -B "$CONTEXTLINES" -Hn${INSENSITIVE} "$1" "$LINE"
done
