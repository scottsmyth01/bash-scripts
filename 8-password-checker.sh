#!/bin/bash

password="linux123"

echo "Enter password:"
read pw

if [ "$pw" = "$password" ]; then
   echo "Access granted!"
else
   echo "Access denied!"
fi
