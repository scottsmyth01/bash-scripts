#!/bin/bash

path="/mnt/c/Users/ssmyt/Desktop/notes"

echo "Enter a directory:"
read directory

if [ -d "$directory" ]; then
   count_files=$(find "$directory" -maxdepth 1 -type f | wc -l)
   count_directories=$(find "$directory" -maxdepth 1 -type d | wc -l)
fi

echo "Files: ${count_files}"
echo "Directories: ${count_directories}"
