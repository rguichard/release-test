#!/bin/bash
WORKDIR=$(pwd)
echo "gh-torrrent: $(ls -l gh-torrent)"
echo "root: $(ls -l /)"
echo "pwd: $(ls -l $WORKDIR)"
echo "tag: $(cat gh-release-torrent/tag)"

export DOCKER_VERSION=$(cat gh-release-torrent/tag)

bash gh-torrent/.ci/templates/torrent.template

head gh-torrent/.ci/templates/torrent.yml

cp gh-torrent/.ci/templates/torrent.yml output/
