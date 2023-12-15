#!/bin/bash

a=5;
b=2;
sum=`expr $a + $b`
mul=`expr $a \* $b`
div=`expr $a \ $b`
sub=`expr $a - $b`
sum2=$((a+b))
sum3=`echo "$a + $b" | bc`
echo Sum is $sum, $sum2
echo Mul is $mul
echo Div is $div
echo Sub is $sub
