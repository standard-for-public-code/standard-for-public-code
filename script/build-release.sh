#!/bin/bash
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2021-2024 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS

if [ "_${VERBOSE}_" != "__" ] && [ "$VERBOSE" -gt 0 ]; then
	set -x
fi

set -e

RELEASE_NAME=$1
if [ "_${RELEASE_NAME}_" == "__" ]; then
	RELEASE_NAME=$( script/git-repo-version.sh )
fi

echo  bundle-install
bundle install

echo  install-fonts
script/ensure-font.sh

echo  update-release-notes-date
script/update-release-notes-date.sh

echo generate-checklist
script/generate-checklist.sh

echo generate-review-template
script/generate-review-template.sh

echo  update-publiccode-yml-date
sed -i -e"s/^releaseDate.*/releaseDate: '$(date --utc +%Y-%m-%d)'/" \
	publiccode.yml

echo  update-publiccode-yml-version
sed -i -e"s@^softwareVersion: .*@softwareVersion: ${RELEASE_NAME}@" \
	publiccode.yml

echo  update-published-version-numbers
sed -i -e"s@<span class=\"standard-version\">[^<]*</span>@<span class=\"standard-version\">${RELEASE_NAME}</span>@" \
	docs/review-template.html \
	docs/checklist.html \
	print-cover.html \
	standard-print.html

echo update-index-md
sed -i -e"s@download/[0-9]\+\.[0-9]\+\.[0-9]\+/standard-checklist-[0-9]\+\.[0-9]\+\.[0-9]\+.pdf@download/${RELEASE_NAME}/standard-checklist-${RELEASE_NAME}.pdf@" index.md

echo  update-readme-version
sed -i -e"s@\[version [^]]*\](assets/version-badge\.svg)@[version ${RELEASE_NAME}](assets/version-badge.svg)@" \
	README.md

echo  update-version-badge.sh
script/make-version-badge.sh ${RELEASE_NAME}

echo  build-pdf
script/pdf.sh ${RELEASE_NAME}

echo "files:"
# git diff || true
ls -l \
	RELEASE_NOTES.md \
	README.md \
	index.md \
	publiccode.yml \
	assets/version-badge.svg \
	docs/review-template.html \
	docs/checklist.html \
	print-cover.html \
	standard-print.html

echo "artefacts"
ls -l standard-*.pdf standard-*.epub
