#!/bin/bash
echo "START Stop Server"
sudo su ec2-user
pkill -f 'rails server' || echo "No server to stop"
echo "DONE Stop Server"
