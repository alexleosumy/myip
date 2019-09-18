#!/bin/bash

ip=`links -dump http://checkip.dyndns.org/ | awk '{ print $4 }'`
echo IP: $ip
provider=`whois $ip | grep 'org-name' | awk '{$1=""}1'`
echo Provider: $provider

