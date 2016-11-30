#!/bin/sh
#set -e

if [ -z ${SPAMD_MAX_CHILDREN+x} ]; then SPAMD_MAX_CHILDREN=1; fi
if [ -z ${SPAMD_PORT+x} ]; then SPAMD_PORT=783; fi
if [ -z ${SPAMD_RANGE+x} ]; then SPAMD_RANGE="10.0.0.0/8,172.16.0.0/12,192.168.0.0/16,127.0.0.1/32"; fi

mkdir -p /var/spool/mail/.spamassassin
chown -R mail.mail /var/spool/mail/

sed "s/nameserver .*/nameserver 8.8.8.8 8.8.4.4/g" -i /etc/resolv.conf

sa-update -D

exec /usr/sbin/spamd -x --syslog-socket none --max-children $SPAMD_MAX_CHILDREN --helper-home-dir -u mail -g mail -p $SPAMD_PORT -i 0.0.0.0 -A $SPAMD_RANGE
