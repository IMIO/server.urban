#!/bin/bash
set -e

sed -i "s/\$(HOSTNAME)/$HOSTNAME/g" /plone/parts/instance/etc/zope.conf
sed -i "s/\$(HOSTNAME)/$HOSTNAME/g" /plone/parts/instance-async/etc/zope.conf
sed -i "s/\$(HOSTNAME)/$HOSTNAME/g" /plone/parts/instance-cron/etc/zope.conf

COMMANDS="adduser debug fg foreground help kill logreopen logtail reopen_transcript run show status stop wait"
START="console start restart"

# zeo
if [[ "$1" == "zeo"* ]]; then
  exec bin/$1 fg
fi

# instance-async
if [[ "$1" == "instance-async"* ]]; then
  exec bin/$1 fg
fi

# instance-async
if [[ "$1" == "instance-cron"* ]]; then
  exec bin/$1 fg
fi

# Plone instance start
if [[ $START == *"$1"* ]]; then
  exec bin/instance console
fi

# Plone instance helpers
if [[ $COMMANDS == *"$1"* ]]; then
  exec bin/instance "$@"
fi

# Custom
exec "$@"
