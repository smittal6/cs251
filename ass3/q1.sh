#!/bin/bash
array=( $(sort $1) )
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
lindex=$(($length-1))
for i in $(seq 0 $lindex);do
        array1[$i]=$(echo "scale=4; (${array1[$i]}-$min)/($max-$min)"| bc -l)
done
echo "${array1[*]}"
