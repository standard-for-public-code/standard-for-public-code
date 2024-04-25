#!/usr/bin/env bash
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2021-2024 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS

# This script is referenced by .github/workflows/test.yml which executes on
# each pull request.

# As part of reviewing a contribution, reviewers are responsible for checking
# that html is valid and conforms to the repository guidelines. This script is
# intended to aid in that process.

set -e # halt script on error

# if PAGES_REPO_NWO is not set then default to standard-for-public-code/standard-for-public-code
# (jekyll defaults to "origin" if a remote of that name exists,
# which makes sense for a true fork, but not for most contributors)
if [ "_${PAGES_REPO_NWO}_" == "__" ]; then
export PAGES_REPO_NWO=standard-for-public-code/standard-for-public-code
fi

# Build the site
bundle exec jekyll build

# Check for broken links and missing alt tags:
# jekyll does not require extentions like HTML
# run only "ScriptCheck" and "ImageCheck"; skip "LinkCheck"
# set an extra long timout for test-servers with poor connectivity
# ignore request rate limit errors (HTTP 429)
# using the files in Jekylls build folder
bundle exec htmlproofer \
    --assume-extension \
    --disable-external \
    ./_site
