#!/usr/bin/bash


# declare variable

PACKAGE="wget unzip httpd"
SVC="httpd"
URL="https://www.tooplate.com/zip-templates/2134_gotto_job.zip"
APP="2134_gotto_job"
DIR="/tmp/webfiles"


echo "######### INSTALL DEPENDENCIES ######"

yum install ${PACKAGE} -y > /dev/null

echo "##### START SERVICES ######"

sudo systemctl start ${SVC}

sudo systemctl enable ${SVC}

echo "###### CREATE DIRECTORY IN WEBFILES ###"

mkdir -p ${DIR}

echo "##### OPEN DIRECTORY ####"

cd ${DIR}

echo "#### DOWNLOAD WEBFILES USING URL ###"

wget $1

echo "#### OPEN FILE #### "

unzip $2

echo "### copy webfile to /var/www/html directory ###"

#sudo rm -r /var/www/html/*

sudo cp -r /tmp/webfiles/$2/*  /var/www/html

echo "### restart httpd ###"

sudo systemctl restart ${SVC}

echo "remove tmp dir"

rm -rf ${DIR}

echo "list /var/html"
i
ls /var/www/html/2134_gotto_job/

echo "status of systemctl"

sudo systemctl status ${SVC}
