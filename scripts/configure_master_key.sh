#!/bin/bash
echo "START master.key Configuration"
aws ssm get-parameter --name "/snm/master_key" --with-decryption --query Parameter.Value --output text > /home/ec2-user/snm/config/master.key
echo "DONE master.key Configuration"
