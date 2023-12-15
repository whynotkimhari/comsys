#!/bin/bash

echo -n "The first char of param is: "
echo $1 | cut -c 1

echo -n "The first and last param are: "
echo $* | cut -d' ' -f 1
echo $* | cut -d' ' -f $#

getent passwd | cut -d':' -f 1 | tee ans.txt
