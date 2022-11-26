#!/bin/bash

echo -e "\n
[ 1 ] for listing the names of currently logged-in users\n
[ 2 ] for showing your Shell directory\n
[ 3 ] for showing Home directory\n
[ 4 ] for checking OS name and version\n
[ 5 ] for showing current working directory\n
[ 6 ] for counting number of users logged in\n
[ 7 ] for showing all available shells in your system\n
[ 8 ] for displaying hard disk information\n
[ 9 ] for displaying CPU information\n
[ 10 ] for displaying memory information\n
[ 11 ] for displaying file system information\n
[ 12 ] for currently running process\n"

read userInput

case $userInput in
    1)
    who -q | grep -v users
    ;;
    2)
    echo "The script you are running has basename $( basename -- "$0"; ) and  dirname $( dirname -- "$0"; )";
    ;;
    3)
    echo $HOME
    ;;
    4)
    cat /proc/version
    ;;
    5)
    echo "The current working directory is : ${PWD}"
    ;;
    6)
    who --count | grep users
    ;;
    7)
    cat /etc/shells
    ;;
    8)
    df -ha
    ;;
    9)
    cat /proc/cpuinfo
    ;;
    10)
    cat /proc/meminfo
    ;;
    11)
    df -Th
    ;;
    12)
    ps r
    ;;
    *)
    echo -e "Please Enter Correct Input \n"
    ;;    
esac