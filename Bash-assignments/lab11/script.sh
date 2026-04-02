#!/bin/bash
#pragati
#31-03-2026
#Create a script that searches for a specific string within a file or directory recursively.

read -p "Enter the search string name " search
read -p "Enter the file or dir path " path

#Check if path or file name exist

if [ ! -e "$path" ]; then
        echo " Error: Path does not exist "
	exit 1
fi

if [ -f "$path" ]; then
	grep "$search" "$path"
    elif [ -d "$path" ] ; then
          grep -r  "$search" "$path"
fi
