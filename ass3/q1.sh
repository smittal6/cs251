#!/bin/bash
array=( $(sort -g $1) )
#echo "${array[*]}"
min=${array[0]}
length=${#array[*]}
max=${array["$length-1"]}
#echo "$min $max"
array1=()
index=0
while read line;do
       array1[index]="$line"
       let index=index+1
done < $1
#readarray -t array1 < $1
#echo "${array1[*]}"
lindex=$(($length-1))
#echo "$lindex"
#so uptil now, array1 is correct, lindex is correct. Let us fucking use awk now.
for i in $(seq 0 $lindex);do
        echo $max $min ${array1[$i]} | awk '{ printf("%.4f\n"),($3-$2)/($1 -$2); exit;}'
done
#echo "${array1[*]}"
#awk -v max="$max" -v min="$min"
