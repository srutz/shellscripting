!#/bin/bash

# get a random quote from dummyjson.com

curl -s https://dummyjson.com/quotes?limit=100 | jq -r ".quotes[$(($RANDOM % 100))]" | jq -r ".author"
