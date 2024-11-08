#!/bin/bash
echo "START Stop Server"
sudo -u ec2-user -i <<'EOF'
pkill -f 'rails server' || echo "No server to stop"
EOF
echo "DONE Stop Server"
