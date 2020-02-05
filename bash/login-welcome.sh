#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example


###############
# Variables   #
###############
loggeduser="$USER"
hostname="$(hostname)"
day=$(date +%A)
dateinf=$(date +%I:%M\ %p)
if [ "$day" = Monday ];
then
cows="Welcome to planet $hostname, C $loggeduser!"
elif [ "$day" = Tuesday ];then
cows="Welcome to planet $hostname, C++ $loggeduser!"
elif [ "$day" = Wednesday ];then
cows="Welcome to planet $hostname, Java $loggeduser!"
elif [ "$day" = Thursday ];then
cows="Welcome to planet $hostname, Python $loggeduser!"
elif [ "$day" = Friday ];then
cows="Welcome to planet $hostname, SQL $loggeduser!"
elif [ "$day" = Saturday ];then
cows="Welcome to planet $hostname, HTML $loggeduser!"
else
cows="Welcome to planet $hostname, CSS $loggeduser!"
fi
cowsay "$cows It is $dateinf on $day ."