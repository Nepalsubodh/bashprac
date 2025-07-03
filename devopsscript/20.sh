#!/bin/bash
read -p "github you want to clone:" g
git clone "$g"

read -p "branch name :" d

git checkout -b "$d"

read -p "give me your file name" f
git add "$f"

read "commit msg" o
 git commit -m "$o" 

git push -u origin "d"
