#!/bin/bash
# This script demonstrates how the shift command works

# create an empty array to put the command line arguments into
myargs=()
# loop through the command line arguments
while [ $# -gt 0 ]; do
  # tell user how many things are left
  echo "There are $# things left to process on the command line."
  # add whatever is in $1 to the myargs array
  myargs+=("$1")
  # tell the user what we did in the script
  echo "Added \'$1\' to the arguments array"
echo "Processing '$1'."
case $1 in
	-h )
    echo 'You added "-h" for help.'
    ;;
    -v )
    echo 'You added "-v" for varbose.'
    ;;
    -d )
	case "$2" in
		[1-5] )
		echo "You added -d for debug level $2."
		shift
		;;
    *)
        echo "The -d option must be followed with a number [1-5]. "
        shift
	esac
    ;;
    *)
    errors=$1
    echo "Error: unkown value $errors"
    ;;
    esac
  # each time by using loop, shift the arguments left
  # this decreases the argument count for us
  shift
  # tell the user that we shifted things
  echo "Shifted command line, leaving $# things left to process."
  echo "--------------------------"
  # go back to the top of the loop to check anything is left 
done
echo "Done"
