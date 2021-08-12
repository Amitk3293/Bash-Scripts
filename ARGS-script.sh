#!/bin/bash
#This script is a fix for excersise 6 for Opsschool. Author: Amit Karni , v2
echo "This script is going to copy files between servers using 4 ARGS"
echo "The first 2 args are for choosing the files, the third arg is for host-destination and the fourth arg is for path-destionation"
#For example - "sh exercise6-fix.sh /root/1.txt /root/123.txt 192.168.0.123 /tmp"

files1=$1
files2=$2
destserver=$3
destpath=$4

scp $files1 $files2 root@$destserver:$destpath/

echo "$files1 and $files2 was copied to $destserver:$destpath"
echo "copied bytes ="
du -shc $files1 $files2 | awk 'END { print $1 }' 
