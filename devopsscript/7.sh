#!/bin/bash


for file in *.txt
do
    
    name="${file%.txt}"
     mv "$file" "${name}.text"
done

