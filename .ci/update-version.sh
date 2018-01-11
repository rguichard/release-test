#!/bin/bash
export DOCKER_VERSION=$(cat gh-release-integration/tag)
echo "docker version: $DOCKER_VERSION"

sed -i "s/VERSION/$VERSION/" gh-integration/index.php
cp -r gh-integration/* output/
