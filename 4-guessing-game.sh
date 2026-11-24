#!/bin/bash

secret=7

echo "Guess the secret number:"
read num

if [ $num -eq $secret ]; then
   echo "Correct! You guessed it!"
elif [ $num -gt $secret ]; then
   echo "Too high!"
else
   echo "Too low!"
fi
