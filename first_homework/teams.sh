#!/bin/bash

# Task 4
# NAME: BUI NGUYEN KIM HAI -- NEPTUN ID: QMIBHU

# VARIABLES
instruction=$1
param=$2
size=$#

# FUNCTIONS
errorMsg() {
	if [ $1 -lt 2 ]
	then
		echo "Please give the $2's name after $3 !"
		exit
	fi

	if [ $1 -gt 2 ]
	then
		echo "Please just give exactly the $2's name after $3 ! Or try to use \"\" to cover the name"
		exit
	fi
}

notExistMsg() {
	if [ $1 -eq 0 ]
	then
		echo "$2 \"$3\" is not in the list!"
		exit
	fi
}

list() {
	errorMsg $size "teacher" $instruction
	exist=0
	teacher=`cat teams.dat | grep ".\+,.\+,$param$" | cut -f 3 -d "," | uniq`
	if [ "$teacher" != "" ]
	then
		exist=1
		echo "All course(s) belong to teacher \"$param\" are:"
		courses=`cat teams.dat | grep ".\+,.\+,$teacher$" | cut -f 1 -d "," | tr "\n" ","`
		
		IFS=,
		for course in $courses
		do 
			echo " - $course"
		done
		unset IFS
	fi
	
	notExistMsg $exist "Teacher" "$param"
}

findTeacherByCode() {
	teacher=`cat teams.dat | grep ".\+,$1,.\+" | cut -f 3 -d "," | uniq`
	echo " - $teacher" >> tmp.txt
}

student() {
	errorMsg $size "student" $instruction

	exist=0
	student=`cat students.dat | cut -f 1 -d "," | grep "^$param$" | uniq`
	if [ "$student" != "" ]
	then
		exist=1

		if [ -f tmp.txt ]
		then
			rm tmp.txt
		fi

		echo "Teacher(s) who teach student \"$student\": "
		line=`cat students.dat | grep "^$student,.\+"`
		IFS=,

		for row in $line
		do
			if [ $row != $student ]
			then
				findTeacherByCode $row
			fi
		done

		cat tmp.txt | sort | uniq

		rm tmp.txt
		unset IFS
	fi
	notExistMsg $exist "Student" "$param"
}

max() {
	IFS=,
	max=0
	teacher=""
	data=`cat teams.dat | cut -f 3 -d "," | sort | uniq | tr "\n" ","`

	for value in $data
	do
		cnt=`cat teams.dat | grep ".\+,.\+,$value$" | wc -l`
		if [ $max -lt $cnt ]
		then 
			max=$cnt
			teacher=$value
		fi
	done
	unset IFS

	echo "The teacher who has the most courses is: teacher \"$teacher\" with $max courses"
}

# MAIN PROGRAM

case "$instruction" in
	-list) list;;
	-student) student;;
	-max) max;;
	*) echo "Wrong command, please check again";;
esac
