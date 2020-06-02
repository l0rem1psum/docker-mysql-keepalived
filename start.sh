#!/bin/bash

apt update
apt install -y iproute2 iputils-ping net-tools rsyslog keepalived nano

service rsyslog start

nano /etc/keepalived/keepalived.conf
# Paste
nano /opt/chk_mysql.sh
# Paste

/etc/init.d/keepalived start
