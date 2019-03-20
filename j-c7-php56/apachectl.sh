#!/bin/bash
# Make sure we're not confused by old, incompletely-shutdown httpd
# context after restarting the container.  httpd won't start correctly
# if it thinks it is already running.
rm -rf /run/httpd/* /tmp/httpd*
[ ! -z $CFG_SCRIPT ] && $CFG_SCRIPT
/usr/bin/filebeat &
exec /usr/sbin/apachectl -DFOREGROUND