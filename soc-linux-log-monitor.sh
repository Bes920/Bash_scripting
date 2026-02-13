#!/bin/bash
#This  tool is one which  is going to monitor our system for multiple failed login attemots
#We are going to monitor  /var/log/syslog  /var/log/auth.log 
syslog = /var/log/syslog
auth = /var/log/auth.log
cat $auth | grep failed  >> /var/log/temp

