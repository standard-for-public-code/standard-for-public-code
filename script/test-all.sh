#!/usr/bin/env bash

# This is script is provided for local development,
# it is not used by continuous integration

# $ help set
#      -e  Exit immediately if a command exits with a non-zero status.
#      -x  Print commands and their arguments as they are executed.
set -x
set -e

./script/test-markdown.sh
./script/test-with-link-check.sh
./script/check-new-links.sh
