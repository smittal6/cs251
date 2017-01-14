#!/bin/bash

if (($#!=2));
	then echo "Not correct number of arguments.Try again."
	exit 1
fi

if (($1<$2));
		then echo "$1 < $2"
elif (($1==$2));
		then echo "$1 = $2"
else
		echo "$1 > $2"
fi

