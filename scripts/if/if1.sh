#!/bin/bash

echo "How old are you?"
read AGE
age=$AGE
	if [ "$AGE" -gt "18" ]
	then
		echo "You may go to the party."
	elif [ "$AGE" -eq "18" ]
	then
		echo "You may go to the party but be back before midnight."
	else
		echo "You may not go to the party."
fi

