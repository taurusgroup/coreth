#!/usr/bin/env bash

git checkout $VERSION
git checkout -b master-sync-$VERSION
git push --set-upstream origin master-sync-$VERSION

git checkout master 
gh pr create --fill --base master-sync-$VERSION

# TODO
# merge back to master
# create a release tag
