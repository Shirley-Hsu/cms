sudo apt-get install build-essential fpc postgresql postgresql-client gettext python2.7 python-setuptools python-tornado python-psycopg2 python-sqlalchemy python-psutil python-netifaces python-crypto python-tz python-six iso-codes shared-mime-info stl-manual python-beautifulsoup python-mechanize python-coverage python-mock cgroup-lite python-requests python-werkzeug python-gevent patool -y

cd cms

./setup.py build

sudo ./setup.py install

sudo usermod -a -G cmsuser shirley

exit

sudo su - postgres

