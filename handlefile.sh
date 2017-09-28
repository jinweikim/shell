#!/bin/bash
dir=$1
str=$2

grep -rl  $str $dir

exit 0;
