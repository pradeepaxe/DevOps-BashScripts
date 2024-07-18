#!/bin/bash


read -p "enter number:" NUM

if [ $NUM -gt 100 ] 
then
    echo "entered if block"
    echo "greater than 100"
    echo date

else
    echo "less than 100"
    exit -1	
fi


