#!/bin/bash
#Arithmetic operators
if (($#!=3));
		then echo "Number of arguments is not correct"
		exit 1
fi

#Checking if file or not
#Using [[ ]] as it is considered safer. More powerful. Check stackoverflow.
if [[ ! -f $1 ]];
		then echo "Not a valid file"
		exit 1
fi

#trying using pipe
#What pipe does is, executes first statement, puts it in STDOUT, and uses that as STDIN for 2nd command.
#Which matches with the syntax for grep, grep string file. If no file picks from STDIN
number=$( grep $2 $1 | grep -c $3)
#echo $number
if [[ "$number" == 0 ]];
		then echo "No match."
		exit 1
else
		grep $2 $1 | grep $3
fi
