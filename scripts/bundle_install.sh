#!/bin/bash
echo "START Running Bundle install"
sudo su ec2-user
cd /home/ec2-user/snm
bundle install
echo "Done Running Bundle install"
