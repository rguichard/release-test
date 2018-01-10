#!/bin/bash
WORKDIR=$(pwd)
echo "gh-torrrent: $(ls -l gh-torrent)"
echo "root: $(ls -l /)"
echo "pwd: $(ls -l $WORKDIR)"
echo "tag: $(cat gh-release-torrent/tag)"

export DOCKER_VERSION=$(cat gh-release-torrent/tag)

echo "docker version: $DOCKER_VERSION"

bash -x gh-torrent/.ci/templates/torrent.template
ls gh-torrent/.ci/templates/
ls $WORKDIR

head torrent.yml || true

cp torrent.yml output/ || true
