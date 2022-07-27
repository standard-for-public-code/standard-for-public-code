#!/bin/sh

# This script is referenced by .github/workflows/test.yml which executes on
# each pull request.

# As part of reviewing a contribution, reviewers are responsible for checking
# that new markdown is valid and conforms to the repository guidelines. This
# script is intended to aid in that process.

# Lint markdown using the Markdownlint gem with the default ruleset except for:
# MD007 Unordered list indentation: we allow sub-lists to also have bullets
# MD013 Line length: we allow long lines
# MD029 Ordered list item prefix: we allow lists to be sequentially numbered
#
# Additionally, we have these violations which should be resolved:
# MD026 Trailing punctuation in header
# MD032 Lists should be surrounded by blank lines
# MD034 Bare URL used
#
bundle exec mdl -r ~MD007,~MD013,~MD029,~MD026,~MD032,~MD034 -i -g '.'
