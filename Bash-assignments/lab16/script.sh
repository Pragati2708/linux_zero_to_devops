#!/bin/bash
#pragati
#31-3-2026
#Print lines from data.txt that contain a specific pattern, and then print a custom message for each matched line.
 
awk '/happy/ {print $0; print "Matched line found"}' data.txt
