#!/bin/bash
echo "START Running Bundle install"
cd /home/ec2-user/snm
bundle install --deployment --without development test
echo "Done Running Bundle install"
