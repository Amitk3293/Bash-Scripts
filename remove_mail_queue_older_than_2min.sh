#!/bin/bash
/etc/init.d/sendmail stop
sleep 1
echo "Cleaing mail queue - only leaving emails in the queue from the last 2 minutes"
find /var/spool/mqueue/ -mmin +2 -exec rm -f {} \;
sleep 1
/etc/init.d/sendmail start
