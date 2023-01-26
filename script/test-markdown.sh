#!/bin/sh
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2021-2023 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS

# This script is referenced by .github/workflows/test.yml which executes on
# each pull request.

# As part of reviewing a contribution, reviewers are responsible for checking
# that new Markdown is valid and conforms to the repository guidelines. This
# script is intended to aid in that process.

# Lint markdown using the rules loaded with .mdlrc, .mdl_style.rb
bundle exec mdl -i -g '.'
