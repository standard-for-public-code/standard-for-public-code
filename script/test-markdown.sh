#!/bin/sh
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2021-2022 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS

# This script is referenced by .github/workflows/test.yml which executes on
# each pull request.

# As part of reviewing a contribution, reviewers are responsible for checking
# that new Markdown is valid and conforms to the repository guidelines. This
# script is intended to aid in that process.

# Lint markdown using the Markdownlint gem with the default ruleset except for:
# MD007 Unordered list indentation: we allow sub-lists to also have bullets
# MD013 Line length: we allow long lines
# MD029 Ordered list item prefix: we allow lists to be sequentially numbered
#
bundle exec mdl -r ~MD007,~MD013,~MD029 -i -g '.'
