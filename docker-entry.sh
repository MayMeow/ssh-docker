#!/bin/bash

echo -ne "Setting user ..."

echo '$SSH_USER:$SSH_PASSWORD' | chpasswd

echo "Starting server..."
./usr/sbin/sshd -D
