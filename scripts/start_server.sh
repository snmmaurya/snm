#!/bin/bash
echo "START Start Server"
sudo -u ec2-user -i <<'EOF'
cd /home/ec2-user/snm
RAILS_ENV=production bundle exec puma -C config/puma.rb
EOF
echo "DONE Start Server"
