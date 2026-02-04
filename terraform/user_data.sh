#!/bin/bash

dnf update -y
dnf install nginx -y
systemctl start nginx
systemctl enable nginx


mkdir -p /var/www/app/releases/v1
mkdir -p /var/www/app/releases/v2

echo "<h1>Version 1 - Stable</h1>" > /var/www/app/releases/v1/index.html

ln -sfn /var/www/app/releases/v1 /var/www/app/current
chown -R ec2-user:ec2user /var/www/app
