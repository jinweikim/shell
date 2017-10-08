#!/bin/bash

file1=$1
file2=$2
sort $file1 $file2 | uniq -d

exit 0;
