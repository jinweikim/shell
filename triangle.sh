#!/bin/bash

for((i=0;i<$1;i++));
    do
        for((j=0;j<=i;j++));
            do
                echo -e $j "\c";
            done
        echo -e "\n";
    done
 exit 0;
    

