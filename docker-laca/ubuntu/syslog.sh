#!/bin/bash

cp /vagrant/conf/rsyslog.conf /etc/rsyslog.conf
cp /vagrant/conf/50-default.conf /etc/rsyslog.d/50-default.conf
systemctl stop rsyslog
sleep 1
systemctl start rsyslog
sleep 1
# /var/log/syslog