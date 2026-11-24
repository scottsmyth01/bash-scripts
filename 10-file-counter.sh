#!/bin/bash

path="/mnt/c/Users/ssmyt/Desktop/scripts"

echo "Enter a directory:"
read directory

if [ -d "$directory" ]; then
   count=$(find "$directory" -maxdepth 1 -type f | wc -l)
   echo "There are $count files in this directory."
else
   echo "Directory does not exist"
fi
