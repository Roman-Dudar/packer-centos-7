#!/bin/bash -eux

# Install Ansible.
yum -y install ansible
echo ANSIBLE_HOST_KEY_CHECKING=False >> /etc/environment

# Copy SSH keys
cp /tmp/priv-key /home/vagrant/.ssh/id_rsa
cp /tmp/pub-key /home/vagrant/.ssh/id_rsa.pub
mv -f /tmp/priv-key /root/.ssh/id_rsa
mv -f /tmp/pub-key /root/.ssh/id_rsa.pub
chmod 600 /home/vagrant/.ssh/id_rsa /home/vagrant/.ssh/id_rsa.pub ~/.ssh/id_rsa ~/.ssh/id_rsa.pub
chown vagrant:vagrant /home/vagrant/.ssh/id_rsa
chown vagrant:vagrant /home/vagrant/.ssh/id_rsa.pub
