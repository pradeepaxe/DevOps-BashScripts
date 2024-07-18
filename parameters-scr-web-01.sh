#!/usr/bin/bash

PACKAGE="wget unzip httpd"
SVC="httpd"
TMP_DIR="/tmp/script/webfile01"
ART_NAME="2100_artist"

sudo yum install $PACKAGE -y

sudo systemctl start $SVC
sudo systemctl enable $SVC


mkdir -p $TMP_DIR
cd $TMP_DIR


wget https://www.tooplate.com/zip-templates/$ART_NAME.zip
unzip $ART_NAME.zip
cd $ART_NAME
pwd
cp -r /tmp/script/webfile01/2100_artist/*  /var/www/html/


sudo systemctl restart httpd

sudo systemctl status httpd

ls -lrt /var/www/html/

rm -rf /tmp/script/webfile01

