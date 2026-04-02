#!/bin/bash
#Pragati
#31-03-2026
#Write a script to replace all occurrences of one word with another throughout data.txt.

read -p "Enter word to replace: " old
read -p "Enter new world: " new

file="data.txt"
if [ ! -f "data.txt" ]; then
	echo " data file does not exit"
        exit 1
fi

sed -i "s/$old/$new/g" "$file"
echo " Replacement done successfully"

