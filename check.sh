#!/bin/bash
echo "Check.sh file will help you calculate the repeat rate of two files you choose."
file1=$1
file2=$2

function getcommonwords(){
    f1=$1;
    f2=$2;
    sort $f1 $f2 | uniq -d | wc -m;
}

function getallwords(){
    f=$1;
    cat $f | wc -m;
}

function output(){
    common=$1;
    all=$2;
    echo "scale=2; $common*100/$all" | bc;
}
#main 计算file1的字符数
main=`getallwords $file1`;

#repeat 计算file1与file2重复部分的字符数
repeat=`getcommonwords $file1 $file2`;

#rate 两个文件的重复率
rate=`output $repeat $main`;
 
echo "the repeat rate is $rate%"


exit 0;
