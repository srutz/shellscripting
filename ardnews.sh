#!/bin/bash

COUNT=${1:-3}

curl -s https://www.tagesschau.de/infoservices/alle-meldungen-100\~rss2.xml | \
	xmlstarlet sel -t -m "//item[position() <= $COUNT]" -v "title" -n -o "  " -v "link" -n -n

