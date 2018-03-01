#!/bin/bash

export NEW_VERSIONS=$(cat branches/added)
export OLD_VERSIONS=$(cat branches/removed)

for version in $NEW_VERSIONS; do
  sed "s/___BRANCH___/$version/g" git/.ci/pipeline-demo.tmpl > pipeline-demo.result
  cat pipeline-demo.result
  echo "fly -t fenrir sp -p demo-$version -c git/.ci/pipeline-demo.result"
done

for version in $OLD_VERSIONS; do
  echo "fly -t fenrir dp -p demo-$version"
done
