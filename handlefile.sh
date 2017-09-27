#!/bin/bash
dir=$1
str=$2
for file in ${dir}/*;
    do
        if [ -d $file ];
            then $0 $file $str
        else
            grep $str $file
            if [ $? -eq 0 ]
                then echo ${file##*//}
            fi
        fi
    done

exit 0;
