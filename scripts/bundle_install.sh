#!/bin/bash
echo "START Running Bundle install"
sudo -u ec2-user -i <<'EOF'
cd /home/ec2-user/snm
bundle install
EOF
echo "Done Running Bundle install"
