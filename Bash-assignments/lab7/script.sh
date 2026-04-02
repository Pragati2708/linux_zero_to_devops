#!/bin/bash
#Date-31-03-26
#Maintainer-Pragati
#list all currently running process and their PIDs

ps -e -o pid,cmd,state | awk '$3=="R" || $3=="S" {print $1, $2}'


