#!/bin/bash
set -o xtrace

#
# Add User onebuck
#
adduser onebuck
usermod -aG sudo onebuck

#
# Install GlusterFS
#
mkdir /gluster-storage
apt install software-properties-common -y
#add-apt-repository ppa:gluster/glusterfs-7 -y
#add-apt-repository ppa:gluster/glusterfs-3.12 -y
add-apt-repository ppa:gluster/glusterfs-9 -y
#add-apt-repository ppa:gluster/glusterfs -y
apt update -y
apt install glusterfs-server -y
apt install glusterfs-client -y
systemctl start glusterd.service
systemctl enable glusterd.service
systemctl status glusterd.service

