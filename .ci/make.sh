#!/bin/bash
WORKDIR=$(pwd)
echo "gh-torrrent: $(ls -l gh-torrent)"
echo "root: $(ls -l /)"
echo "pwd: $(ls -l $WORKDIR)"
echo "tag: $(cat gh-release-torrent/tag)"

export DOCKER_VERSION=$(cat gh-release-torrent/tag)

bash -x gh-torrent/.ci/templates/torrent.template
ls gh-torrent/.ci/templates/

head gh-torrent/.ci/templates/torrent.yml || true

cp gh-torrent/.ci/templates/torrent.yml output/ || true
