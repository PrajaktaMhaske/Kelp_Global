#!/bin/bash
echo "Enter a number: "
read n
Fibonacci $n
 
Fibonacci ()
{
	if $n<=0; then
		echo -n "Incorrect input"
	elif $n == 1; then
		echo $0
	elif $n == 2; then
		echo $1
	else
		echo -n "$(( $(Fibonacci $(($n-2)))+$(Fibonacci $(($n-1))) ))"	
}



