#!/bin/bash

case "$1" in
	-list)
	ls
	;;
	-nou) # number of user
	who | wc -l
	;;
	*)
		echo "wrong option"
		;;
esac
