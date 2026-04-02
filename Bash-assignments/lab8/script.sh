#!/bin/bash
#Pragati
#31-03-2026
#Create a script that takes a process ID as an argument and attempts to terminate that process
if [ $# -ne 1 ]; then
 echo "Usage: $0 <PID>"
fi

pid=$1
            
#check if PID is number 
if ! [[ "$pid" =~ ^[0-9]+$ ]]; then

	echo "Error: PID must be number"
	exit 1
fi

#check if PID exist

if ! ps -p "$pid" > /dev/null 2>&1; then
	echo "Error: Process with PID $pid does not exit"
	exit 1
fi

#kill process

kill "$pid"

if [ $? -eq 0 ] ; then
	echo "process $pid terminated successfully."
else
	echo "failed"
fi

if [ $? -ne 0 ] ; then
	kill -9 "$pid"
	echo "process terminating forcefully"
fi


