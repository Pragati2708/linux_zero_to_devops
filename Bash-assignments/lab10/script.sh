#!/bin/bash
#pragati
#31-03-2026
#Write a script that counts the number of words, lines, and characters in a given text file

read -p "Enter the file name: " file
 if [ ! -f "$file" ] ; then
	 echo " file does not exit"
	 exit 1
fi

lines=$(wc -l < "$file")
words=$(wc -w < "$file")
chars=$(wc -c < "$file")

echo "lines: $lines"
echo "Words: $words"
echo "Characters: $chars"
