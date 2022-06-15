#!/usr/bin/env bash

# This is script is provided for local development,
# it is not used by continuous integration

# $ help set
#      -x  Print commands and their arguments as they are executed.
set -x

./script/test-markdown.sh &&
./script/test-with-link-check.sh &&
./script/check-new-links.sh
