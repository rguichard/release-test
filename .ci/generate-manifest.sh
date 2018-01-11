#!/bin/bash

export DOCKER_VERSION=$(cat integration-version/version)

echo "docker version: $DOCKER_VERSION"

bash -x gh-integration/.ci/templates/integration.template
ls gh-integration/.ci/templates/

grep image integration.yml

cp integration.yml output/
