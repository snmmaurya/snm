#!/bin/bash
echo "START ec2-user Ownership"
sudo -u ec2-user -i <<'EOF'
sudo mkdir -p /home/ec2-user/snm/tmp
sudo chown -R ec2-user:ec2-user /home/ec2-user/snm/tmp
EOF
echo "Done ec2-user Ownership"
