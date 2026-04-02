#!/bin/bash
#Date-31/03/2026
#Maintainer-Pragati
#copy a file from sourc path to a destination path provided as arguments . Handle cases where sourc or destination are invalid

read -p " Enter the file name: " filename
read -p " Enter the sourc path of file:" sourcpath
read -p " Enter the destination path of file:" destinationpath

#full sourc path 
src="$sourcpath/$filename"

if [ ! -f "$src" ] ; then
	echo " Error:Sourc file does not exit "
	exit 1
fi

if [ ! -d "$destinationpath" ] ;  then
        echo " Error: Destination path is invalid"
        exit 1
fi

cp "$src" "$destinationpath"
echo " file copied successfully"






