#!/bin/bash
WORKDIR=$(pwd)

curl http://$TEST_URL
[ $? -ne 0 ] && echo "BAD URL" && exit 1
echo "ALL GOOD"
