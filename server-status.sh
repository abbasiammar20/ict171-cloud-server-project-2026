#!/bin/bash

# ICT171 Cloud Server Project
# Server health check script
# This script checks basic server and website status.

echo "===== Server Health Check ====="

echo ""
echo "Date and Time:"
date

echo ""
echo "Nginx Service Status:"
systemctl is-active nginx

echo ""
echo "Disk Usage:"
df -h /

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Website Response:"
curl -I http://localhost
