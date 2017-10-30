#!/bin/bash

dir=$1

for file in `ls $dir`
    do
        if [ -d $1"/"$file ];
        then
            $0 $1"/"$file 
        else
            echo $1"/"$file
        fi
    done
 



