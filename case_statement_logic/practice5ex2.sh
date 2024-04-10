#!/bin/bash
PIDFILE="/tmp/sleep-walking-server.pid"
trap "rm $PID_FILE; exit" SIGHUP SIGINT SIGTERM
echo "$$" > $PIDFILE
while true
do
:
done
