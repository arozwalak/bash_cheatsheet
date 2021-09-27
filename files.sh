#!/usr/bin/env bash

file="helloScript.sh"
# read from file line by line
while IFS= read -r line
do
  # print each line
  echo "$line"
done < $file
