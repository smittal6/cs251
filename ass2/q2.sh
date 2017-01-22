#!/bin/bash

#Inputs n,m,d,file f,t and g

#Array for students[indexed at zero], with the value in the array being the day assigned to it
#array for number(by using percentages) of students on days.
#array to store the percentages from the file
#array for keeping track of actually allocated students to days[bascically array[day]++]

### Storing the required values
n=$1;
m=$2;
d=$3;
file=$4;
t=$5;
g=$6;
###Testing if input happening or not
#echo "$1 $2 $3 $5 $6"
###Found an amazing bash utility to shuffle list, shuf command
###Initializing the array
students="$(seq "$1" | shuf)"
tas="$(seq "$2" | shuf)"
nstud_day=()
count_left=0;
day_percentages=()
readarray day_percentages < "$4"
left=n-count;
###Test
#echo ${day_percentages[*]}
#echo "${students[*]}"
#echo "break"
#echo "${tas[*]}"
#echo "${nstud_day[*]}"
#echo "$count"
time_array=($5)
#time_array[0]="$t"
#for i in $(seq 1 $1)
#	do	time_array[i]="$(date -u -d "${time_array[i-1]}"+"$g" +%I:%Mpm)"
#done
for i in `seq 0 $1`;
#for getting the time array
do
  oldt=${time_array[$i]}
  newt=$(date -d $oldt+$6 +%I:%Mpm;);
  time_array=(${time_array[@]} $newt);
 # echo "${time_array[i]}"
done
awk -v n="$n" -v m="$m" -v d="$d" -v t="$t" -v g="$g" -v students1="${students[*]}" -v tas1="${tas[*]}" -v day_percentages1="${day_percentages[*]}" -v time1="${time_array[*]}" '
BEGIN{
		split(day_percentages1,day_percentages," ")
		split(students1,students, " ")
		split(tas1,tas," ")
		split(time1,timarr, " ")
		#print time1;
		#print timarr[3];
		i=1
		count=0
		while(i<=d){
				temp=int(day_percentages[i]*n*0.01)
				if((day_percentages[i]*n*0.01)-temp>0.5){
					nstud_day[i]=int(day_percentages[i]*n*0.01)+1;
					count=count+nstud_day[i];
				}
				else{
						nstud_day[i]=temp;
						count=count+nstud_day[i];
				}
				i++;
		}
		i=1;
		while(count!=n){
				if(n-count>0){
					nstud_day[i]++;
					count++;
					i++;
				}
				else{
					nstud_day[i]--;
					count--;
					i++;
				}
		}	
		#nstud_day is in line with the percentages
		tas_left=m
		#Assign atleast each TA to a day.
		i=1
		#Array ntas_day will have Tas per day

		while(i<=d){
				ntas_day[i]=1
				i++;
		}
		tas_left=m-d
		i=1
		while(i<=d){
				tpd[i]=nstud_day[i]/ntas_day[i]
				i++;
		}
		while (tas_left>0){
			maxtpd=0
			maxindex=1
			for(i=1;i<=d;i++){
					if(tpd[i]>=maxtpd){
							maxindex=i;
							maxtpd=tpd[i];
					}
			}
			ntas_day[maxindex]++
			tpd[maxindex]=(nstud_day[maxindex]/ntas_day[maxindex]);
			tas_left--		
		}
		#Testing the TAs per day
		#for (i in ntas_day) {
				#print ntas_day[i]
		#}
		
		#Day students
		stu_index=1
		counter=0
		for(i=1;i<=d;i++){
				counter=0;
				printf "Day %s students:\n",i
				while(counter<nstud_day[i]){
						print students[stu_index];
						stu_index++;
						counter++;
				}
		}
		#Day mappings
		stu_index=1
		ta_index=0
		time_index=1
		for(i=1;i<=d;i++){
			equistudents=int(nstud_day[i]/ntas_day[i])
			leftstudents=nstud_day[i]%ntas_day[i]
			printf "Day %s mappings:\n",i
			#time_index=1;
			for(j=1;j<=ntas_day[i];j++){
					time_index=1;
					ta_index++;
					for(k=1;k<=equistudents;k++){
							printf "%s %s %s\n",tas[ta_index],students[stu_index],timarr[time_index]
							stu_index++;
							time_index++;
					}
					if (leftstudents>0){
							printf "%s %s %s\n",tas[ta_index],students[stu_index],timarr[time_index];
							leftstudents--;
							stu_index++;
							time_index++;
					}
			}
		}
		exit
}'
