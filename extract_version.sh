#!/bin/bash

git clone git@github.com:tubular/tbcode.git
grep "current_version = " ./tbcode/svc_dummyhack/.bumpversion.cfg | sed 's/current_version = //'
