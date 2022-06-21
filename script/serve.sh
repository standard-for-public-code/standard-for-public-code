#!/bin/bash

# jekyll build defaults to "origin" unless PAGES_REPO_NWO is set
# if there is no "origin" branch and PAGES_REPO_NWO is not set
# then default to publiccodenet/standard
if [ "_$(git remote | grep origin)_" != "_origin_" ] &&
   [ "_${PAGES_REPO_NWO}_" == "__" ]; then
export PAGES_REPO_NWO=publiccodenet/standard
fi

bundle exec jekyll serve --livereload
