#!/bin/bash
echo "START Stop Server"
pkill -f 'rails server' || echo "No server to stop"
echo "DONE Stop Server"
