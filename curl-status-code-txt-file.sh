#!/bin/bash
#For checking status code of websites

for URL in `cat /root/31.txt`; 
do echo $URL; 
	curl -m 10 -s -I $1 "$URL" | grep HTTP/1.1 |  awk {'print $2'}; done
