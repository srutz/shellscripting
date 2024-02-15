#!/bin/bash

TMP=$(mktemp)
cat > "$TMP" <<EOF
This is an example of editable text.
You can modify this text.
When you're done, save and exit.
EOF

dialog --title "Edit Text" --editbox "$TMP" 15 50 2>edited.txt
edited_content=$(cat edited.txt)
dialog --title "Edited Text" --msgbox "$edited_content" 15 50
clear
rm edited.txt

