#!/bin/bash
echo -n "Number of file in this directory is: "
ls | wc -l

echo -n "Number of lines in this file ($1) is: "
cat $1 | wc -l

echo -n "Number of chars in this file ($1) is: "
cat $1 | wc -c

echo -n "Number of user who are logged in right now is: "
who | sort -u | wc -l

echo -n "Number of chars in the param is: "
echo $1 | wc -c

echo -n "Number of user (total ELTE) who are logged in right now is: "
getent passwd | wc -l
