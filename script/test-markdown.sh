#!/bin/sh
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2025 Standard for Public Code Authors, https://www.standardforpubliccode.org/AUTHORS; 2021-2024 The Foundation for Public Code <info@publiccode.net>, https://www.standardforpubliccode.org/AUTHORS

# This script is referenced by .github/workflows/test.yml which executes on
# each pull request.

# As part of reviewing a contribution, reviewers are responsible for checking
# that new Markdown is valid and conforms to the repository guidelines. This
# script is intended to aid in that process.

# Lint markdown using the rules loaded with .mdlrc, .mdl_style.rb
# -g, --git-recurse                Only process files known to git when given a directory
# -i, --[no-]ignore-front-matter   Ignore YAML front matter
bundle exec mdl --ignore-front-matter --git-recurse '.'
