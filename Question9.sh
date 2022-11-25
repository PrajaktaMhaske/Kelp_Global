#!/bin/sh
echo "Search user:"
dir="/home"
read typed
if $typed -e $dir; then
    echo "user exist!"
else
    echo "user deosn't exist"
fi