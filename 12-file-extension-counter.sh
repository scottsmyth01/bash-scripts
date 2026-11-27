#!/bin/bash

echo "Enter a directory:"
read -r directory

directory=$(wslpath -u "$directory")

if [ -d "$directory" ]; then

   echo "Enter a file extension (eg., txt, pdf, sh...):"
   read extension

   count=$(find "$directory" -name "*.${extension}" | wc -l)

   echo "Total .${extension} files: ${count}"

else
   echo "Directory does not exist."
fi
