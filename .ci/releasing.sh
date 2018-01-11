#!/bin/bash
VERSION=$(cat integration-version/version)
cat << EOF > output/body
WOW $VERSION
SUCH RELEASE
MUCH CI/CD
EOF
