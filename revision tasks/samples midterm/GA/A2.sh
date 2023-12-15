instruction=$1

case "$instruction" in 
	-g) echo "Hello";;
	-l) ls;;
	-w) who;;
	-?) 
		echo "-g : for greeting"
		echo "-l : list content of directory"
		echo "-w : write out the logged in user"
		;;
esac
