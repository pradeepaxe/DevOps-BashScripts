#!/bin/bash


read -p "enter number:" NUM

if [ $NUM -gt 100] 
then
    echo "entered if block"
    echo "greater than 100"
    date
fi


