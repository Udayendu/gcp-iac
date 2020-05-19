#!/bin/bash

apt-get update
apt-get upgrade -y

apt-get install nginx -y

systemctl start nginx
systemctl enable nginx
