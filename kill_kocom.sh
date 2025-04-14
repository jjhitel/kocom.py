#!/bin/sh
ps ax | grep kocom_light.py | grep -v grep | awk '{print "kill " $1}'|sh
