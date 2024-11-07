#!/bin/bash
echo "START Start Server"
cd /home/ec2-user/snm
RAILS_ENV=production bundle exec puma -C config/puma.rb
echo "DONE Start Server"
