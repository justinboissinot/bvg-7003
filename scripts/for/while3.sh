#!/bin/bash

count="0"
max="10"

while [ $count != $max ]; do count=`expr $count + 1`
        echo "We are now at number: $count"
done

exit 0
