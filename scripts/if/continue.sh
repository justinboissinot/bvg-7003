#!/bin/bash

for value in $1/*
do
	if [ ! –r $value ]
	then
		echo $value not readable 1>&2
		continue
	fi
	cp $value $1/backup/
done

