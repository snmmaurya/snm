#!/bin/bash
echo "START assets precompile"
sudo -u ec2-user -i <<'EOF'
cd /home/ec2-user/snm
RAILS_ENV=production rake assets:precompile
EOF
echo "Done assets precompile"
