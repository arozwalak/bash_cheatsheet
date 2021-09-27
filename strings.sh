#!/usr/bin/env bash

st1="1st STRING"
st2="2nd String"

if [ "$st1" == "$st2" ]
then
  echo "strings match"
else
  echo "strings don't match"
fi


echo ${st1,,} # lowercase
echo ${st2^^} # uppercase

n1=4
n2=20

echo $(( n1 + n2 ))
echo $(( n1 - n2 ))
echo $(( n1 * n2 ))
echo $(( n1 / n2 ))
echo $(( n1 % n2 ))

echo $(expr $n1 + $n2 )
echo $(expr $n1 - $n2 )
echo $(expr $n1 \* $n2 )
echo $(expr $n1 / $n2 )
echo $(expr $n1 % $n2 )

echo "Enter Hex number of your choice"
read Hex

echo -n "The decimal value of $Hex is : "
echo "obase=10; ibase=16; $Hex" | bc
