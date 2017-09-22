#!/bin/bash -eux

# Reboot
yum -y update
yum -y install kernel-headers kernel-devel perl gcc bzip2
reboot
