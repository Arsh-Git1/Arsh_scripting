#!/bin/bash

CHECK=$1

if [ -e $CHECK ]
then 
	if [ -f $CHECK ]
	then 
		echo "$CHECK is a file. exit code 0"
		exit 0

	elif [ -d $CHECK ]
	then 
		echo "$CHECK is a directory. exit code 1"
		exit 1

	else
		echo "$CHECK is an other type of file. exit code 2"
		exit 2
	fi

else 
	echo "$CHECK doesn't exist."
fi
