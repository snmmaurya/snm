#!/bin/bash
echo "START Start Server"
sudo su ec2-user
cd /home/ec2-user/snm
RAILS_ENV=production bundle exec puma -C config/puma.rb
echo "DONE Start Server"
