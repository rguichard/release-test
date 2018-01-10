#!/bin/bash
WORKDIR=$(pwd)
echo "gh-torrrent: $(ls -Rla gh-torrent)"
echo "tag: $(cat gh-release-torrent/tag)"

export DOCKER_VERSION=$(cat gh-release-torrent/tag)

bash templates/torrent.template

head templates/torrent.yml

cp templates/torrent.yml output/
