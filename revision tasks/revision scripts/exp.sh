#!/bin/bash

sum=`expr $1 + $2`
echo Sum $1 and $2 is $sum

mul=`expr $1 \* $2`
echo Prod $1 and $2 is $mul

div=`expr $1 / $2`
echo $1 div $2 is $div

rem=`expr $1 % $2`
echo $1 ren $2 is $rem

f=`expr $(($1-$2)) \* 2`
echo "($1 - $2) * 2 is $f"

s=`expr $(($1 + $2)) % 2`
echo "($1 + $2) % 2 is $s"
