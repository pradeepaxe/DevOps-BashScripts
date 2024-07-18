#!/bin/bash


value=$(ip addr show  | grep -v LOOPBACK | grep -ic mtu)
echo $value

if [ $value -eq 1 ]
then
	echo "value is eq to 1"
elif [ $value -gt 1 ]
then
	echo "value is gt than 1"
else
	echo "value is lt than 1"
fi


