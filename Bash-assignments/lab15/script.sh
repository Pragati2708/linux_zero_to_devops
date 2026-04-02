#!/bin/bash
#pragati
#31-03-2026
#Print only the lines from data.txt where the second field is a number greater than 10. Use awk command.

awk '$2+0 >= 10' data.txt
