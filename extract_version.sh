#!/bin/bash

git clone git@github.com:tubular/tbcode.git
grep "current_version = " ./svc_dummyhack/.bumpversion.cfg | sed 's/current_version = //'
