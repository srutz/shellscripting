#!/bin/bash
if [ $# -ne 3 ]
then
        echo "Usage: $(basename $0) ARCHIVE.tgz FILEPATTERN SEARCHPATTERN"
        exit 1
fi

ARCHIVE="$1"
FILEPATTERN="$2"
SEARCHPATTERN="$3"
tar ztf "$ARCHIVE" |grep "$FILEPATTERN" |while read F
do
	tar xzOf "$ARCHIVE" "$F" | grep -ni "$SEARCHPATTERN" | sed -e "s|^|$F:|"; 
done

