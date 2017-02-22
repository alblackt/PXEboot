#!/bin/sh

#This script makes 3 partitions and formated them in UFS.
#Target hdd -da0 - 71Gb. 
#First partition - swap 	1Gb 
#Second - /usr/local		15Gb
#Third - /var 			all other space til the end of the disk

#Show all drives
#we can use "geom disk list" or "camcontrol devlist"
#Destroy if something exist
gpart destroy -F da0
#Create GPT
gpart create -s gpt /dev/da0
#Create partitions. 
gpart add -t freebsd-swap -s 1G /dev/da0
gpart add -t freebsd-ufs -s 15G /dev/da0
gpart add -t freebsd-ufs /dev/da0

#To see what did we make: gpart show da0

#make UFS file system with soft updates (-U)
#newfs -U /dev/da0p1
newfs -U /dev/da0p2
newfs -U /dev/da0p3

#to make swap mountable: swapon /dev/da0p1