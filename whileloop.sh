#!/bin/bash

counter=1

while [ $counter -lt 100 ]
do
  echo "##############"
  echo " the number is $counter"
  counter=$((counter*2))
done
