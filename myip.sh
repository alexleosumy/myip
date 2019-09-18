#!/bin/bash

#need instaled links and whois

ip=`links -dump http://checkip.dyndns.org/ | awk '{ print $4 }'`
provider=`whois $ip | grep 'org-name' | awk '{$1=""}1'`
echo -e "IP: $ip\nProvider: $provider"

