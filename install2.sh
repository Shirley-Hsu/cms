!/bin/sh

sudo -u postgres createuser cmsuser -P

sudo -u postgres createdb -O cmsuser database

sudo -u postgres psql database -c 'ALTER SCHEMA public OWNER TO cmsuser'

sudo -u postgres psql database -c 'GRANT SELECT ON pg_largeobject TO cmsuser'

sudo -u postgres psql database -c "INSERT INTO admins (adminname,password,identity) VALUES ('admin', 'admin',1);"

exit
