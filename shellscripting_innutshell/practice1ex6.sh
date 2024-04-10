#!/bin/bash

read -p "Enter File/Dir/Other : " CHECK

if [ -e $CHECK ]
then 
	if [ -f $CHECK ]
	then 
		echo "$CHECK is a file"
		ls -l | grep $CHECK

	elif [ -d $CHECK ]
	then 
		echo "$CHECK is a directory"
		ls -l | grep $CHECK
	
	else
		echo "$CHECK is other type of file"
	fi
else
	echo "$CHECK doesn't exist"
fi
