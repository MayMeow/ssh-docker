#!/bin/bash

echo -ne "Setting user... $SSH_USER"

echo "root:$SSH_PASSWORD" | chpasswd
sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

echo "Starting server..."
./usr/sbin/sshd -D
