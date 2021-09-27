#!/usr/bin/env bash

car=('BMW' 'Toyota' 'Honda')

echo "${car[@]}"
echo "${#car[@]}" # how many items are in array
echo "${!car[@]}" # print array indexes

echo "${car[0]}"
echo "${car[1]}"
