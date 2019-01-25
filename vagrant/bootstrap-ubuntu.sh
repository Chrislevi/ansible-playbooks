#!/bin/bash

sudo sh -c "useradd -s '/bin/bash' -m -p 'qwe123' user"
sudo sh -c 'echo "user ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/user'
sudo sh -c 'echo "nameserver 8.8.8.8" > /etc/resolvconf/resolv.conf.d/base'
sudo sh -c 'resolvconf --enable-updates'
sudo sh -c 'resolvconf -u'
sudo sh -c 'resolvconf -d eth0.dhclient -u'
sudo sh -c 'resolvconf -d em1.dhclient -u'
sudo sh -c 'resolvconf --disable-updates'
sudo sh -c 'echo "LC_ALL=\"en_US.UTF-8\""  >  /etc/default/locale'
sudo sh -c 'apt update && apt install -y unzip htop vim openssh-server'
