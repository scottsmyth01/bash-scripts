#!/bin/bash

echo "Enter a starting number:"
read num

while [ $num -ge 0 ]; do
   echo "$num"
   ((num--))
done

echo "Liftoff!"
