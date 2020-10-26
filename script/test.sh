#!/usr/bin/env bash
set -e # halt script on error

# Lint markdown using the Markdownlint gem with the default ruleset except for:
# MD007 Unordered list indentation: we allow sub-lists to also have bullets
# MD013 Line length: we allow long lines
# MD029 Ordered list item prefix: we allow lists to be sequentially numbered
#
# Additionally, we have these violations which should be resolved:
# MD004 Unordered list style
# MD009 Trailing spaces
# MD012 Multiple consecutive blank lines
# MD022 Headers should be surrounded by blank lines
# MD026 Trailing punctuation in header
# MD032 Lists should be surrounded by blank lines
# MD034 Bare URL used
#
bundle exec mdl -r ~MD007,~MD013,~MD029,~MD004,~MD009,~MD012,~MD022,~MD026,~MD032,~MD034 -i -g '.'

# Build the site
bundle exec jekyll build

# Check for broken links and missing alt tags, ignore edit links to GitHub as they might not exist yet,
# SSL connections or host certificates are not verified in order not to break a build when sites use outdated certs or the Travis build server does not contain the correct CA certificates.
# Use this line in to enable default SSL connections and certificate verification: bundle exec htmlproofer --url-ignore "/github.com/(.*)/edit/" ./_site
bundle exec htmlproofer --url-ignore "/github.com/(.*)/edit/" ./_site --typhoeus-config '{"ssl_verifypeer": false, "ssl_verifyhost":0}'
