#!/bin/sh
cp -f /etc/config/squid.conf /etc/squid
rm -f /var/run/squid.pid
/usr/sbin/squid  -NYCd 1 &

while true;do
/usr/bin/diff /etc/squid/squid.conf /etc/config/squid.conf
if [ $? -ne 0 ];then
    cp -f /etc/config/squid.conf /etc/squid/
    /usr/sbin/squid -k reconfigure
fi
sleep 10
done
