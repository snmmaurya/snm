#!/bin/bash
echo "START Database Configuration"
cd /home/ec2-user/snm
RAILS_ENV=production rake db:create
RAILS_ENV=production rake db:seed
RAILS_ENV=production rake db:migrate
echo "Done Database Configuration"
