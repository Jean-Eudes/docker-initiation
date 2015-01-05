#!/bin/bash
#
# Expect to get autorized_key in list content in KEYS environnements variables
#
su git -c "mkdir -p /home/git/.ssh && echo -e \"${KEYS}\" >> /home/git/.ssh/authorized_keys"
su git -c 'chmod 700 /home/git/.ssh/authorized_keys'

#
# Run ssh daemon
sudo /usr/sbin/sshd -D