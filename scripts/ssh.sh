#!/bin/bash -eux

# Provision SSH keys
mkdir /home/vagrant/.ssh /root/.ssh &> /dev/null
touch /home/vagrant/.ssh/authorized_keys /root/.ssh/authorized_keys &> /dev/null
cat /tmp/pub-key >> /home/vagrant/.ssh/authorized_keys
cat /tmp/pub-key >> /root/.ssh/authorized_keys
