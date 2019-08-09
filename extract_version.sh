#!/bin/bash

git clone git@github.com:tubular/tbcode.git
git clone git@github.com:tubular/spinnaker-scripts.git
grep "current_version = " ./tbcode/svc_dummyhack/.bumpversion.cfg | sed 's/current_version = //' > ./spinnaker-scripts/version.txt
cd ./spinnaker-scripts
git add version.txt
git commit -m "update version"
git push origin master
