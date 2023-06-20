#!/bin/sh

date="$(date +%Y-%m-%d_%H:%M:%S)"

echo "[$date] - Pruning docker images." >> /app/log.log

/usr/local/bin/docker image prune --force

date="$(date +%Y-%m-%d_%H:%M:%S)"

echo "[$date] - Finished pruning docker images." >> /app/log.log
