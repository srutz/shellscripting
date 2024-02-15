#!/bin/bash
TMP=$(mktemp)
dialog --title "Select a file" --fselect $HOME/ 10 60 2>"$TMP"
FILE=$(cat "$TMP")
clear
echo "selected file: $FILE"

