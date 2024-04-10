#!/bin/bash

read -p "Please enter a file extension: " EXTENSION

DATE=$(date '+%Y-%m-%d')

read -p "Please enter a file prefix (Press ENTER Date) : " PRE
if [ -z "$PRE" ]
then
	for LIST in $(ls *.${EXTENSION})
	do
		mv $LIST "${DATE}-${LIST}"
		echo "Renaming ${LIST} as ${DATE}-${LIST}"
	done

else
	for LIST in $(ls *.${EXTENSION})
	do
		mv $LIST "${PRE}-${LIST}"
		echo "Renaming ${LIST} as ${PRE}-${LIST}"
	done
fi
