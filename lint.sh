#!/bin/bash -x

## fail on errors
set -e

find . -iname *.pp \
  -exec puppet-lint \
  --log-format \
  "%{path}:%{line}:%{check}:%{KIND}:%{message}" \
  {} \
  \;
