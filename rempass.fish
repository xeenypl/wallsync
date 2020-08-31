#!/usr/bin/env fish

set host $argv[1]

# making soure ~/.ssh exist on local machine
mkdir ~/.ssh

# Set the correct permissions 
chmod 700 ~/.ssh

# Generate an RSA key pair for identification with the remote server
ssh-keygen -t rsa

# making soure ~/.ssh exist on srever
ssh $host 'mkdir ~/.ssh'

# Copy your public key to the remote server
cat ~/.ssh/id_rsa.pub | ssh $host 'cat >> ~/.ssh/authorized_keys'

# ssh is very strict about correct permissions
ssh $host 'chmod g-w,o-w ~; chmod 700 ~/.ssh; chmod 600 ~/.ssh/authorized_keys'
