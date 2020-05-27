#!/bin/bash
input="repo.list"

# Read file line by line
while IFS= read -r line
do
# Remove everything after ':'
  echo $line | sed 's/:.*//'
done < "$input"
