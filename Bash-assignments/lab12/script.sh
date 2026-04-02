#!/bin/bash 
#pragati
#31-03-2026
#Develop a script that backs up a specific directory to a compressed archive, including a timestamp in the filename.

read -p "Enter the directory name to take backup" dir
if [ ! -d "$dir" ]; then
	echo "Error: This is not a valid directory "
	exit 1
fi

#get a currect timestap

timestamp=$(date +%Y%m%d_%H%M%S)

#Extract dir name (last parth of path

dirname=$(basename "$dir")

#create backup file
backup_file="${dirname}_backup_${timestamp}.tar.gz"

#Create a compressed file

tar -czf "$backup_file" "$dir"

echo "Backup Created: $backup_file"


