#!/bin/bash

cmsInitDB

sudo -u postgres psql database -c "INSERT INTO admins (adminname,password,identity) VALUES ('admin', 'admin',1);"
