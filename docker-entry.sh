#!/bin/bash

echo -ne "Setting user... $SSH_USER"

echo "root:$SSH_PASSWORD" | chpasswd

echo "Starting server..."
/usr/sbin/sshd -D
