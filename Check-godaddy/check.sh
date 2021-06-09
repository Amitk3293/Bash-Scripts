#!/bin/bash


#use - ./check.sh  2>&1 | tee output.txt | mail -s "godaddy-domains-expiration-time" mail@gmail.com ### For sending out via mail


cat domains.txt | while read line

do
sudo ./check_godaddy -domain $line -warn 30 -crit 14 -key 9Q3PfpNfTQs_JJQ5RXz6BUdSmLNqhizTEo -secret 7w9vfc7XdRRuF1VvVfs5GB
done
