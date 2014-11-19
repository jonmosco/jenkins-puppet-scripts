#!/bin/bash -x

## fail on errors
set -e

for manifest in $( find . -iname '*.pp' ); do
  puppet parser validate \
  --render-as s \
  --modulepath=modules \
  "$manifest" || exit 1;
done
