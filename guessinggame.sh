#!/usr/bin/env bash

# guessing game program

# function to display message based on error
function message {
if [[ $1 -eq 0 ]]
then
	msg="Congratulations! your guess of $2 files is correct."
elif [[ $1 -gt 0 ]]
then
	msg="Try Again! your guess of $2 is too high."
else
	msg="Try Again! your guess of $2 is too low."
fi
echo $msg
}

# flags and instantiating file_count
err_input=1
file_count=$(ls -l| wc -l) 

# Loop to read and display
while [[ $err_input -ne 0 ]]
do
	echo "Enter your guess for number of files in this directory"
	read input
	err_input=`expr $input - $file_count`
	echo $(message $err_input $input)
done
