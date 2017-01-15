#!/bin/bash
re="^-?[0-9]+\.?[0-9]+$"
if (($#!=2));
	then echo "Not correct number of arguments. Try again."
	exit 1
fi
if  [[ ! $1 =~ $re ]] || [[ ! $2 =~ $re ]];
	then echo "Please input numbers"
	exit 1
fi	

if (( $(echo "$1<$2" | bc -l) ));
		then echo "$1 < $2"
elif (( $(echo "$1==$2" | bc -l) ));
		then echo "$1 = $2"
else
		echo "$1 > $2"
fi

