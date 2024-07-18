#!/usr/bin/bash

if [ -z "$1" ]; then
 echo "package1 package2 package 3"
 exit 1
fi

PACKAGE=$1

PACKAGES=($PACKAGE)
SVC=$2
TMP_DIR=$3
ART_NAME=$4

sudo yum install "${PACKAGES[@]}" -y

sudo systemctl start $SVC
sudo systemctl enable $SVC


mkdir -p $TMP_DIR
cd $TMP_DIR


wget https://www.tooplate.com/zip-templates/$ART_NAME.zip
unzip $ART_NAME.zip
cd $ART_NAME
pwd
cp -r /tmp/script/webfile01/$ART_NAME/*  /var/www/html/


sudo systemctl restart httpd

sudo systemctl status httpd

ls -lrt /var/www/html/

rm -rf /tmp/script/webfile01

