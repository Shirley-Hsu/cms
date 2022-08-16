#!/bin/bash

cmsInitDB

sudo -u postgres psql database -c "INSERT INTO admins (adminname,password,identity) VALUES ('admin', 'admin',1);"

sudo apt-get update
sudo apt-get install openssh-server
sudo service ssh start
