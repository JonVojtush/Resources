#!/bin/bash

grep -rni "value" /DIRECTORY/PATH/* > output.file

########################################################################

# & = Run one after the other is successful
# && = concurrent threads

########################################################################

# Find file recursive ls
find folder -type f -name "*.txt" 

########################################################################

# Load the list of commands to be executed in parallel
COMMANDS=(
    "echo \"test1\"" 
    "echo \"test2\"" 
    "echo \"test3\"" 
    "echo \"test4\"" 
    "echo \"test5\"" 
    "echo \"test6\"" 
    "echo \"test7\"" 
    "echo \"test8\""
)

# Run each command in a separate thread using nohup
for i in {1..8}; do
  nohup --map-file="$COMMANDS"[$i] &
done

########################################################################

# Convert file extension
for file in *.xlsx; do
    mv -- "$file" "${file%.TXT}.txt"
done