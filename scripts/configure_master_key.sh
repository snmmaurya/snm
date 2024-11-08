#!/bin/bash
echo "START master.key Configuration"
sudo -u ec2-user -i <<'EOF'
aws ssm get-parameter --name "/snm/master_key" --with-decryption --query Parameter.Value --output text > /home/ec2-user/snm/config/master.key
EOF
echo "DONE master.key Configuration"
