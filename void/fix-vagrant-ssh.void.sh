#!/bin/sh
xbps-install -uSy wget &&
    mkdir -p /home/vagrant/.ssh &&
    wget -O /home/vagrant/.ssh/authorized_keys https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub &&
    chown -R vagrant:vagrant /home/vagrant/.ssh &&
    chmod 0700 /home/vagrant/.ssh &&
    chmod 0600 /home/vagrant/.ssh/authorized_keys &&
    xbps-remove -Ry wget &&
    xbps-remove -Oo
