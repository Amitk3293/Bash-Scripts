#!/bin/bash
 
 
 echo "- - -" > /sys/class/scsi_host/host0/scan
 echo "- - -" > /sys/class/scsi_host/host1/scan
 echo "- - -" > /sys/class/scsi_host/host2/scan
 
#fdisk /dev/XXX - Partitions,size,types to Your relevant usage
 
pvcreate /dev/sdb1
pvcreate /dev/sdb2

vgextend VolGroup /dev/sdb1
lvextend -L +150G /dev/mapper/VolGroup-lv_root
resize2fs /dev/mapper/VolGroup-lv_root


vgextend VolGroup /dev/sdb2
lvextend -L +145G /dev/mapper/VolGroup-lv_home
resize2fs /dev/mapper/VolGroup-lv_home
