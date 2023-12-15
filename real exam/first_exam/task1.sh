#!/bin/bash

case "$1" in
	-g) echo "Hello sir, have a great day!";;
	-l) ls;;
	-w) who;;
	-?)
		echo "-g : for greeting!"
		echo "-l : for list the content of current directory"
		echo "-w : for write out the logged in users"
		;;
esac
