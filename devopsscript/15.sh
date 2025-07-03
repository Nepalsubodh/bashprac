#!/bin/bash

bob(){
read -p "enter your number:" a
read -p "enter your another number" b
c=$((a+b))
echo "the sum of $a and $b is: $c"

