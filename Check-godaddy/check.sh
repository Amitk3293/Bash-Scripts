#!/bin/bash

cat domains.txt | while read line

do
sudo ./check_godaddy -domain $line -warn 30 -crit 14 -key 9Q3PfpNfTQs_JJQ5RXz6BUdSmLNqhizTEo -secret 7w9vfc7XdRRuF1VvVfs5GB
done



