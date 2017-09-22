#!/bin/bash -eux

# Zero out the rest of the free space using dd, then delete the written file.
rm -f /home/vagrant/VBoxGuestAdditions.iso
yum -y remove kernel-headers
yum clean all
rm -rf /var/cache/yum, to also free up space taken by orphaned data from disabled or removed repos

dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

# Add `sync` so Packer doesn't quit too early, before the large file is deleted.
sync
