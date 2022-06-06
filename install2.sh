#!/bin/bash

sudo -u postgres createuser cmsuser -P

sudo -u postgres createdb -O cmsuser database

sudo -u postgres psql database -c 'ALTER SCHEMA public OWNER TO cmsuser'

sudo -u postgres psql database -c 'GRANT SELECT ON pg_largeobject TO cmsuser'

