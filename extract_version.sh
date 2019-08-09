#!/bin/bash

git clone git@github.com:tubular/tbcode.git
git clone git@github.com:tubular/spinnaker-scripts.git
VERSION=`grep "current_version = " ./tbcode/svc_dummyhack/.bumpversion.cfg | sed 's/current_version = //'`
echo "{image: {tag: $VERSION}}"~ > ./spinnaker-scripts/version.txt
cd ./spinnaker-scripts
git add version.txt
git commit -m "update version"
git push origin master
