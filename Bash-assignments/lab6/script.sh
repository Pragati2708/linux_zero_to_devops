#!/bin/bash
#Date-31-03-2026
#Maintainer- Pragati
#Compare two strings prvovided as arguments and indicate if you are eqal ready.

if [ $# -ne 2  ] ; then 
	echo " Usage: $0 $str1 $str2 "
	exit 1
fi
str1=$1
str2=$2 

#Check if inputs are numbers

if [[ "$str1" =~ ^[0-9]+$ || "$str2" =~ ^[0-9]+$ ]]; then
    echo "Error: Please provide only strings, not numbers"
    exit 1
fi


#Compare both arguments

if [ $1 = $2 ] ; then
	echo " Both the strings are equal"
else 
	echo " Both strings are differenct"
fi

