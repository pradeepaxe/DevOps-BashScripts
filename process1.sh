#!/bin/bash


ls /var/run/httpd/httpd.pid 

if [ -f /var/run/httpd/httpd.pid ]
then
   echo "process running sucessfully"
else
   echo "process not running"
   echo "starting the proces"

   systemctl start httpd

   if [ -f /var/run/httpd/httpd.pid ] 
   then
      echo "process started ......"
   else
      echo "process failed "

   fi
fi
