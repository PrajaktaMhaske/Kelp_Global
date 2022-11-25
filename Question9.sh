#!/bin/sh
echo "Search user:"
dir="/home"
read typed
if $typed -e $dir; then
    echo "User exist!"
else
    echo "User deosn't exist"
fi
