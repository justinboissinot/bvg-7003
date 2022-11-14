#!/bin/bash
echo "Hi, what is your name?"
read USER_NAME
echo "Hello $USER_NAME, hope you are doing well!"
echo "I will create you a file called ${USER_NAME}_file"
touch "${USER_NAME}_file"
