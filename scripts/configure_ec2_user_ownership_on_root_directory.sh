#!/bin/bash
echo "START ec2-user Ownership"
sudo -u ec2-user -i <<'EOF'
sudo chown -R ec2-user:ec2-user /home/ec2-user/snm
EOF
echo "Done ec2-user Ownership"