#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

firstnum=5
secondnum=2
sum=$((firstnum + secondnum))
dividend=$((firstnum / secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

cat <<EOF
$firstnum plus $secondnum is $sum
$firstnum divided by $secondnum is $dividend
  - More precisely, it is $fpdividend
EOF

#this task shows addtion and multiplication of 3 numbers
Num1=7
Num2=2
Num3=1
Num4=$((Num1 + Num2 + Num3))
Num5=$((Num1 * Num2 * Num3))

cat <<EOF
$Num1 add $Num2 add $Num3 is $Num4
$Num1 add $Num2 add $Num3 is $Num5
EOF

#this task show subtraction and multiply of 2 numbers
Num1=7
Num2=4
add=$((Num1 - Num2))
multiply=$((Num1 * Num2))
remainder=$((Num1 / Num2))
fpremainder=$(awk "BEGIN{printf \"%.4f\", $Num1/$Num2}")

cat <<EOF
$Num1 minus $Num2 is $add
$Num1 product $Num2 is $multiply
$Num1 divided by $Num2 is $remainder
  - More precisely, it is $fpremainder
EOF
