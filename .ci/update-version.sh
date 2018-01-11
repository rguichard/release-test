#!/bin/bash
export VERSION=$(cat integration-version/version)

sed -i "s/VERSION/$VERSION/" gh-integration/index.php
cp -r gh-integration/* output/
