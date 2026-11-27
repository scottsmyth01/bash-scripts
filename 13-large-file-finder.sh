#!/bin/bash

echo "Enter a directory:"
read -r directory
directory=$(wslpath -u "$directory")
echo "Enter a minimum file size (MiB):"
read file_size

if [ -d "$directory" ]; then
   contents=$(find "$directory" -type f -size +"$file_size"M)

   if [ -n "$contents" ]; then
      echo "$contents"
      echo "Files larger than ${file_size} MiB: $(echo "$contents" | wc -l)"
   else
      echo "No files found"
   fi
else
   echo "Directory does not exist"
fi
