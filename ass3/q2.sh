#!/bin/bash/

#f1 contains roll number and name
#f2 contains project number and roll number
#f3 contains project number and marks
#sort first file according to roll number, save the result as a one-one mapping bw roll number and name.
#sort the second file according to the roll number, add to one one correspondence by using project numbers
#in the third file, search according to the projcet number, add result, and store it.
index=0
IFS=','
sort -k1 $1 > temp1.txt
while read -a wine 
do
        rolls[index]=${wine[0]}
        name[index]=${wine[1]}
        #echo ${rolls[$index]}
        let index=index+1;
        #echo $index
done < temp1.txt
#echo ${name[0]}
sort -k2 -t"," -n $2 > temp2.txt
index=0
while read -a line
do
        project[index]=${line[0]}
        let index=index+1;
done < temp2.txt
#sort -k1 -t"," -n $3 > temp3.txt
while read -a fine
do
        marks[${fine[0]}]=$(( ${fine[1]} + ${fine[2]} ))
done < $3
#setting the length of the loop
index=0
length="${#rolls[*]}"
#echo $length
while (( length-- ))
do
        echo ${rolls[$index]},${name[$index]},${marks[${project[$index]}]}
        let index=index+1
done
