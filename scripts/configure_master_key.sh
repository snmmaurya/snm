#!/bin/bash
echo "START credentials/production.key Configuration"
sudo -u ec2-user -i <<'EOF'
sudo sh -c 'aws ssm get-parameter --name "/snm/master_key" --with-decryption --query Parameter.Value --output text > /home/ec2-user/snm/config/credentials/production.key'
EOF
echo "DONE credentials/production.key Configuration"
