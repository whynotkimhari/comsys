#!/bin/bash
echo give num
read a
e=`expr $a \* $a + 2 \* $a + 3`
echo Rs: $e
