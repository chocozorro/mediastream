#!/bin/sh  
echo "`date -u` `tail -3 /var/log/syslog`" >> recolecta_info.log
echo "`date -u` `df -h /mediastream`" >> recolecta_info.log
echo "`date -u` `sha1sum /var/log/auth.log`" >> recolecta_info.log
