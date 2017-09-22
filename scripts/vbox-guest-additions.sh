#!/bin/bash -eux

# installing guest additions with deps
mkdir /media/cd
mount -o loop /home/vagrant/VBoxGuestAdditions_*.iso /media/cd
/bin/bash /media/cd/VBoxLinuxAdditions.run --nox11
