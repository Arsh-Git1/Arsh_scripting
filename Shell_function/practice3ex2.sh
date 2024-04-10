#!/bin/bash

function Filecount() {
        NUM=$(ls -l $DIR | grep "^-" | wc -l)
        echo "$DIR : "
	echo "	$NUM"
}

for DIR in $@
do
	Filecount
done
