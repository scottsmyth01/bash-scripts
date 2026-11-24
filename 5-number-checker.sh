#!/bin/bash

echo "Enter a number:"
read num

if [ $num -eq 0 ]; then
   echo "The number is 0!"
elif [ $num -gt 0 ]; then
   echo "The number is positive!"
else
   echo "The number is negative!"
fi
