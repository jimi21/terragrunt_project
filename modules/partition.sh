#!/bin/bash
sudo /sbin/mkfs -t ext4 /dev/sdc
sudo /bin/mkdir /datadrive
sudo /bin/mount /dev/sdc /datadrive
sudo chmod 755 /etc/fstab
sudo /bin/echo /dev/sdc /datadrive ext4 defaults,nofail 0 0 >> /etc/fstab
