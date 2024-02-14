#!/bin/bash

# Check if a file name is provided as an argument
if [ $# -eq 0 ]
then
    echo "Usage: $0 filename"
    exit 1
fi

FILE=$1

# Check if the file exists
if [ ! -f "$FILE" ]
then
    echo "File not found!"
    exit 2
fi

# Get a random line from the file
RANDOM_LINE=$(shuf -n 1 "$FILE")

echo "$RANDOM_LINE"

