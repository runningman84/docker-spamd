#!/bin/sh

sa-update

exec /usr/sbin/spamd -x --max-children 1 --helper-home-dir -u mail -g mail -p 783 -i 0.0.0.0 -A 10.0.0.0/8,172.16.0.0/12,192.168.0.0/16,127.0.0.1/32
