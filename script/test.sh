#!/usr/bin/env bash
set -e # halt script on error

# Build the site
bundle exec jekyll build

# Check for broken links and missing alt tags, ignore edit links to GitHub as they might not exist yet,
# SSL connections or host certificates are not verified in order not to break a build when sites use outdated certs or the Travis build server does not contain the correct CA certificates.
# Use this line in to enable default SSL connections and certificate verification: bundle exec htmlproofer --url-ignore "/github.com/(.*)/edit/" ./_site
bundle exec htmlproofer --url-ignore "/github.com/(.*)/edit/" ./_site --typhoeus-config '{"ssl_verifypeer": false, "ssl_verifyhost":0}'
