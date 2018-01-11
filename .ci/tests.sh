#!/bin/bash
WORKDIR=$(pwd)
apt update
apt install -yf curl
curl http://$TEST_URL
[ $? -ne 0 ] && echo "BAD URL" && exit 1
echo "ALL GOOD"
