#!/bin/bash


sudo systemctl stop httpd
yum remove unzip wget httpd
rm -rf /var/www/html/*
rm -rf /tmp/webfiles


