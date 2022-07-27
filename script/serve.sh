#!/bin/bash

# The serve.sh script can be used to preview how jekyll will build the site.
# See also: pdf.sh

# if PAGES_REPO_NWO is not set then default to publiccodenet/standard
# (jekyll defaults to "origin" if a remote of that name exists,
# which makes sense for a true fork, but not for most contributors)
if [ "_${PAGES_REPO_NWO}_" == "__" ]; then
export PAGES_REPO_NWO=publiccodenet/standard
fi

bundle exec jekyll serve --livereload
