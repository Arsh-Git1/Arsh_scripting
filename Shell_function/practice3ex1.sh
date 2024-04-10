#!/bin/bash

function Filecount() {
	local NUM=$(ls -l | grep "^-" | wc -l)
	echo "Current directory has : $NUM files"
}

Filecount
