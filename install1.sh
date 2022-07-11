#!/bin/bash

read -p "請輸入使用者名稱:" name

sudo apt-get install build-essential fpc postgresql postgresql-client gettext python2.7 python-setuptools python-tornado python-psycopg2 python-sqlalchemy python-psutil python-netifaces python-crypto python-tz python-six iso-codes shared-mime-info stl-manual python-beautifulsoup python-mechanize python-coverage python-mock cgroup-lite python-requests python-werkzeug python-gevent patool -y

sudo chmod 755 setup.py

./setup.py build

sudo ./setup.py install

sudo usermod -a -G cmsuser $name

cd 
wget http://ftp.gnu.org/gnu/gcc/gcc-12.1.0/gcc-12.1.0.tar.gz
tar -zxvf gcc-12.1.0.tar.gz
sudo apt-get install bzip2 -y
cd gcc-12.1.0
sudo ./contrib/download_prerequisites 
mkdir build && cd build
../configure -enable-checking=release -enable-languages=c,c++ -disable-multilib
sudo make -j 12
sudo make install

sudo shutdown -r 0

