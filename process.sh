#!/bin/bash


ls /var/run/httpd/httpd.pid 

if [ $? -eq 0 ]
then
   echo "process running sucessfully"
else
   echo "process not running"
   echo "starting the proces"

   systemctl start httpd

   if [ $? -eq 0 ] 
   then
      echo "process started ......"
   else
      echo "process failed "

   fi
fi
