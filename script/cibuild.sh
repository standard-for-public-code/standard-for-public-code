#!/usr/bin/env bash

# This is script is referenced by .travis.yml

./script/test-markdown.sh &&
./script/test-with-link-check.sh &&
./script/check-new-links.sh
