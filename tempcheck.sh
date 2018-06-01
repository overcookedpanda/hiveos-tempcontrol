#!/bin/sh
if ps -ef | grep -v grep | grep tempcontrol ; then
        exit 0
else
        screen -S temp -X quit
        screen -dmS temp /hive/sbin/tempcontrol
        exit 0
fi
