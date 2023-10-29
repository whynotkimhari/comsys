#!/bin/bash

cat $1 | cut -d ' ' -f $2-$3 | tee firstword.txt
