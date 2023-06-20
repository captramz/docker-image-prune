#!/bin/sh

# set up timezone

apk add tzdata

echo "$TZ" > /etc/timezone

# set up cron

echo "$CRON sh /app/prune.sh" >> /etc/crontabs/root
