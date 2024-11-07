#!/bin/bash
echo "START Database Configuration"
sudo -u ec2-user -i <<'EOF'
cd /home/ec2-user/snm
RAILS_ENV=production rake db:create
RAILS_ENV=production rake db:seed
RAILS_ENV=production rake db:migrate
EOF
echo "Done Database Configuration"
