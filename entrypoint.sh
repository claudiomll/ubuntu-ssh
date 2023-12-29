#!/bin/bash

mkdir -p /root/.ssh
mkdir -p /home/ubuntu/.ssh
chmod  0700 /root/.ssh
chmod  0700 /home/ubuntu/.ssh
echo ${ROOT_PUB_KEY} > /root/.ssh/authorized_keys
echo ${UBUNTU_PUB_KEY} > /home/ubuntu/.ssh/authorized_keys

/usr/sbin/sshd -D
