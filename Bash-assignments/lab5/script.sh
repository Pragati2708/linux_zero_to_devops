#!/bin/bash
#Date-31-03-2026
#Maintainer-Pragati
#check if a given file has read, write and execute permission for the owner

#CHECK IF ARGUMENT IS PASSED

if [ $# -ne 1 ] ; then
	echo "Usage: $0 <filename>"
	exit 1
fi

file=$1

if [ ! -e "$file" ] ; then
	echo "file does not exit"
fi

if [ -r "$file" ] && [ -w "$file" ] && [ -x "$file" ]; then
	echo "Owner have all the permissions"
else
	echo "Owner does not have all permisiion"
fi

