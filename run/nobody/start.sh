#!/usr/bin/dumb-init /bin/bash

# create dir to store config files in
mkdir -p /config/nzbhydra

# run app
/usr/bin/python2 /usr/lib/nzbhydra/nzbhydra.py --nobrowser --config /config/nzbhydra/settings.cfg --database /config/nzbhydra/nzbhydra.db
