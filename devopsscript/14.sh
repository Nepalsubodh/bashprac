#!/bin/bash

correct_password="nepal"
read -s -p "Enter your password: " user_password
echo  
if [ "$user_password" = "$correct_password" ]; then
    echo "Access granted."
else
    echo "Access denied. Incorrect password."
fi
