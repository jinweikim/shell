#!/bin/bash

file1=$1
file2=$2
main=`cat $file1 | wc -m`
repeat=`sort $file1 $file2 | uniq -d | wc -m`
rate=`echo "scale=2; $repeat*100/$main" | bc`
echo "the repeat rate is $rate%"

exit 0;
