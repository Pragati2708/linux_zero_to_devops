#!/bin/bash
#Date-31/3/2026
#Maintainer-Pragati
#prompt the user for file name and then check whether it is regular file or dir

read -p "Enter the file name:" name

if [ -e "$name" ] ; then
	echo "File Exist"
	if [ -f "$name" ] ; then
		echo " $name is file"
		elif [ -d "$name" ] ; then
			echo "$name is directory"
		else
                        echo "$name is exist , but it is not a regular file or not a directory"
	fi
else
	echo " $name does not exist"
fi	






