read -p "請輸入使用者名稱" name

sudo apt-get install build-essential fpc postgresql postgresql-client gettext python2.7 python-setuptools python-tornado python-psycopg2 python-sqlalchemy python-psutil python-netifaces python-crypto python-tz python-six iso-codes shared-mime-info stl-manual python-beautifulsoup python-mechanize python-coverage python-mock cgroup-lite python-requests python-werkzeug python-gevent patool -y

sudo chmod 755 setup.py

./setup.py build

sudo ./setup.py install

sudo usermod -a -G cmsuser $name

sudo shutdown -r 0

