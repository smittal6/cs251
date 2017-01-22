#!/bin/bash/
awk '
BEGIN { FS=",";}
{
	if (NF%2==0){
		for(i=1;i<NF;i=i+2){
			printf "%s,%s",$(i+1),$i;
			if (i<NF-1)
				printf ",";	
		}	
	}
	else{
			for(i=1;i<NF-1;i=i+2){
					printf "%s,%s,",$(i+1),$i;
			}
			printf "%s",$i;
	}
	printf "\n";
}
' $1

