#!/bin/bash
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2019-2024 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS

# The serve.sh script can be used to preview how Jekyll will build the site.
# See also: pdf.sh

# if PAGES_REPO_NWO is not set then default to standard-for-public-code/standard-for-public-code
# (jekyll defaults to "origin" if a remote of that name exists,
# which makes sense for a true fork, but not for most contributors)
if [ "_${PAGES_REPO_NWO}_" == "__" ]; then
export PAGES_REPO_NWO=standard-for-public-code/standard-for-public-code
fi

bundle exec jekyll serve --livereload
