#!/bin/bash

echo "enter the file system to check whether its mounted or not"
read p
echo $p

for i in `cat /proc/mounts`
do
	if [[ $p =~ $i ]];then
		echo "$p is mounted"
	else
		echo "Error....$p is not mounted"
		fi
done