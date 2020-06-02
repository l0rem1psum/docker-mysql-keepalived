#!/bin/bash
counter=$(netstat -na|grep "LISTEN"|grep "3306"|wc -l)
if [ "${counter}" -eq 0 ]
then
    /etc/init.d/keepalived stop
else
   echo "running..." >> /opt/keepalived-running-info.log
   sleep 5000
fi
