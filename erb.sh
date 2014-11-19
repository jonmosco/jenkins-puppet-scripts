#!/bin/bash -x

## fail on errors
set -e

find . -iname *.erb \
  erb -x -T '-' -P mytemplate.erb | ruby -c \
  {} \
  \;
